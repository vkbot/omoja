package com.android.server.rollback;

import android.content.pm.VersionedPackage;
import android.content.rollback.PackageRollbackInfo;
import android.content.rollback.RollbackInfo;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import com.android.server.net.watchlist.WatchlistLoggingHandler;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.text.ParseException;
import java.time.Instant;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;
import libcore.io.IoUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class RollbackStore {
    private static final String TAG = "RollbackManager";
    private final File mRollbackDataDir;

    RollbackStore(File rollbackDataDir) {
        this.mRollbackDataDir = rollbackDataDir;
    }

    List<Rollback> loadRollbacks() {
        List<Rollback> rollbacks = new ArrayList<>();
        this.mRollbackDataDir.mkdirs();
        for (File rollbackDir : this.mRollbackDataDir.listFiles()) {
            if (rollbackDir.isDirectory()) {
                try {
                    rollbacks.add(loadRollback(rollbackDir));
                } catch (IOException e) {
                    Slog.e(TAG, "Unable to read rollback at " + rollbackDir, e);
                    removeFile(rollbackDir);
                }
            }
        }
        return rollbacks;
    }

    private static IntArray convertToIntArray(JSONArray jsonArray) throws JSONException {
        if (jsonArray.length() == 0) {
            return new IntArray();
        }
        int[] ret = new int[jsonArray.length()];
        for (int i = 0; i < ret.length; i++) {
            ret[i] = jsonArray.getInt(i);
        }
        return IntArray.wrap(ret);
    }

    private static JSONArray convertToJsonArray(IntArray intArray) {
        JSONArray jsonArray = new JSONArray();
        for (int i = 0; i < intArray.size(); i++) {
            jsonArray.put(intArray.get(i));
        }
        return jsonArray;
    }

    private static JSONArray convertToJsonArray(List<PackageRollbackInfo.RestoreInfo> list) throws JSONException {
        JSONArray jsonArray = new JSONArray();
        for (PackageRollbackInfo.RestoreInfo ri : list) {
            JSONObject jo = new JSONObject();
            jo.put("userId", ri.userId);
            jo.put("appId", ri.appId);
            jo.put("seInfo", ri.seInfo);
            jsonArray.put(jo);
        }
        return jsonArray;
    }

    private static ArrayList<PackageRollbackInfo.RestoreInfo> convertToRestoreInfoArray(JSONArray array) throws JSONException {
        ArrayList<PackageRollbackInfo.RestoreInfo> restoreInfos = new ArrayList<>();
        for (int i = 0; i < array.length(); i++) {
            JSONObject jo = array.getJSONObject(i);
            restoreInfos.add(new PackageRollbackInfo.RestoreInfo(jo.getInt("userId"), jo.getInt("appId"), jo.getString("seInfo")));
        }
        return restoreInfos;
    }

    private static JSONArray ceSnapshotInodesToJson(SparseLongArray ceSnapshotInodes) throws JSONException {
        JSONArray array = new JSONArray();
        for (int i = 0; i < ceSnapshotInodes.size(); i++) {
            JSONObject entryJson = new JSONObject();
            entryJson.put("userId", ceSnapshotInodes.keyAt(i));
            entryJson.put("ceSnapshotInode", ceSnapshotInodes.valueAt(i));
            array.put(entryJson);
        }
        return array;
    }

    private static SparseLongArray ceSnapshotInodesFromJson(JSONArray json) throws JSONException {
        SparseLongArray ceSnapshotInodes = new SparseLongArray(json.length());
        for (int i = 0; i < json.length(); i++) {
            JSONObject entry = json.getJSONObject(i);
            ceSnapshotInodes.append(entry.getInt("userId"), entry.getLong("ceSnapshotInode"));
        }
        return ceSnapshotInodes;
    }

    private static JSONArray extensionVersionsToJson(SparseIntArray extensionVersions) throws JSONException {
        JSONArray array = new JSONArray();
        for (int i = 0; i < extensionVersions.size(); i++) {
            JSONObject entryJson = new JSONObject();
            entryJson.put("sdkVersion", extensionVersions.keyAt(i));
            entryJson.put("extensionVersion", extensionVersions.valueAt(i));
            array.put(entryJson);
        }
        return array;
    }

    private static SparseIntArray extensionVersionsFromJson(JSONArray json) throws JSONException {
        if (json == null) {
            return new SparseIntArray(0);
        }
        SparseIntArray extensionVersions = new SparseIntArray(json.length());
        for (int i = 0; i < json.length(); i++) {
            JSONObject entry = json.getJSONObject(i);
            extensionVersions.append(entry.getInt("sdkVersion"), entry.getInt("extensionVersion"));
        }
        return extensionVersions;
    }

    private static JSONObject rollbackInfoToJson(RollbackInfo rollback) throws JSONException {
        JSONObject json = new JSONObject();
        json.put("rollbackId", rollback.getRollbackId());
        json.put("packages", toJson((List<PackageRollbackInfo>) rollback.getPackages()));
        json.put("isStaged", rollback.isStaged());
        json.put("causePackages", versionedPackagesToJson(rollback.getCausePackages()));
        json.put("committedSessionId", rollback.getCommittedSessionId());
        return json;
    }

    private static RollbackInfo rollbackInfoFromJson(JSONObject json) throws JSONException {
        return new RollbackInfo(json.getInt("rollbackId"), packageRollbackInfosFromJson(json.getJSONArray("packages")), json.getBoolean("isStaged"), versionedPackagesFromJson(json.getJSONArray("causePackages")), json.getInt("committedSessionId"));
    }

    Rollback createNonStagedRollback(int rollbackId, int userId, String installerPackageName, int[] packageSessionIds, SparseIntArray extensionVersions) {
        File backupDir = new File(this.mRollbackDataDir, Integer.toString(rollbackId));
        return new Rollback(rollbackId, backupDir, -1, userId, installerPackageName, packageSessionIds, extensionVersions);
    }

    Rollback createStagedRollback(int rollbackId, int stagedSessionId, int userId, String installerPackageName, int[] packageSessionIds, SparseIntArray extensionVersions) {
        File backupDir = new File(this.mRollbackDataDir, Integer.toString(rollbackId));
        return new Rollback(rollbackId, backupDir, stagedSessionId, userId, installerPackageName, packageSessionIds, extensionVersions);
    }

    static void backupPackageCodePath(Rollback rollback, String packageName, String codePath) throws IOException {
        File sourceFile = new File(codePath);
        File targetDir = new File(rollback.getBackupDir(), packageName);
        targetDir.mkdirs();
        File targetFile = new File(targetDir, sourceFile.getName());
        Files.copy(sourceFile.toPath(), targetFile.toPath(), new CopyOption[0]);
    }

    static File[] getPackageCodePaths(Rollback rollback, String packageName) {
        File targetDir = new File(rollback.getBackupDir(), packageName);
        File[] files = targetDir.listFiles();
        if (files == null || files.length == 0) {
            return null;
        }
        return files;
    }

    static void deletePackageCodePaths(Rollback rollback) {
        for (PackageRollbackInfo info : rollback.info.getPackages()) {
            File targetDir = new File(rollback.getBackupDir(), info.getPackageName());
            removeFile(targetDir);
        }
    }

    static void saveRollback(Rollback rollback) {
        try {
            JSONObject dataJson = new JSONObject();
            dataJson.put("info", rollbackInfoToJson(rollback.info));
            dataJson.put(WatchlistLoggingHandler.WatchlistEventKeys.TIMESTAMP, rollback.getTimestamp().toString());
            dataJson.put("stagedSessionId", rollback.getStagedSessionId());
            dataJson.put("state", rollback.getStateAsString());
            dataJson.put("apkSessionId", rollback.getApkSessionId());
            dataJson.put("restoreUserDataInProgress", rollback.isRestoreUserDataInProgress());
            dataJson.put("userId", rollback.getUserId());
            dataJson.putOpt("installerPackageName", rollback.getInstallerPackageName());
            dataJson.putOpt("extensionVersions", extensionVersionsToJson(rollback.getExtensionVersions()));
            PrintWriter pw = new PrintWriter(new File(rollback.getBackupDir(), "rollback.json"));
            pw.println(dataJson.toString());
            pw.close();
        } catch (IOException | JSONException e) {
            Slog.e(TAG, "Unable to save rollback for: " + rollback.info.getRollbackId(), e);
        }
    }

    static void deleteRollback(Rollback rollback) {
        removeFile(rollback.getBackupDir());
    }

    private static Rollback loadRollback(File backupDir) throws IOException {
        try {
            File rollbackJsonFile = new File(backupDir, "rollback.json");
            JSONObject dataJson = new JSONObject(IoUtils.readFileAsString(rollbackJsonFile.getAbsolutePath()));
            return rollbackFromJson(dataJson, backupDir);
        } catch (ParseException | DateTimeParseException | JSONException e) {
            throw new IOException(e);
        }
    }

    static Rollback rollbackFromJson(JSONObject dataJson, File backupDir) throws JSONException, ParseException {
        return new Rollback(rollbackInfoFromJson(dataJson.getJSONObject("info")), backupDir, Instant.parse(dataJson.getString(WatchlistLoggingHandler.WatchlistEventKeys.TIMESTAMP)), dataJson.getInt("stagedSessionId"), Rollback.rollbackStateFromString(dataJson.getString("state")), dataJson.getInt("apkSessionId"), dataJson.getBoolean("restoreUserDataInProgress"), dataJson.optInt("userId", 0), dataJson.optString("installerPackageName", ""), extensionVersionsFromJson(dataJson.optJSONArray("extensionVersions")));
    }

    private static JSONObject toJson(VersionedPackage pkg) throws JSONException {
        JSONObject json = new JSONObject();
        json.put("packageName", pkg.getPackageName());
        json.put("longVersionCode", pkg.getLongVersionCode());
        return json;
    }

    private static VersionedPackage versionedPackageFromJson(JSONObject json) throws JSONException {
        String packageName = json.getString("packageName");
        long longVersionCode = json.getLong("longVersionCode");
        return new VersionedPackage(packageName, longVersionCode);
    }

    private static JSONObject toJson(PackageRollbackInfo info) throws JSONException {
        JSONObject json = new JSONObject();
        json.put("versionRolledBackFrom", toJson(info.getVersionRolledBackFrom()));
        json.put("versionRolledBackTo", toJson(info.getVersionRolledBackTo()));
        IntArray pendingBackups = info.getPendingBackups();
        List<PackageRollbackInfo.RestoreInfo> pendingRestores = info.getPendingRestores();
        IntArray snapshottedUsers = info.getSnapshottedUsers();
        json.put("pendingBackups", convertToJsonArray(pendingBackups));
        json.put("pendingRestores", convertToJsonArray(pendingRestores));
        json.put("isApex", info.isApex());
        json.put("isApkInApex", info.isApkInApex());
        json.put("installedUsers", convertToJsonArray(snapshottedUsers));
        json.put("ceSnapshotInodes", ceSnapshotInodesToJson(info.getCeSnapshotInodes()));
        json.put("rollbackDataPolicy", info.getRollbackDataPolicy());
        return json;
    }

    private static PackageRollbackInfo packageRollbackInfoFromJson(JSONObject json) throws JSONException {
        VersionedPackage versionRolledBackFrom = versionedPackageFromJson(json.getJSONObject("versionRolledBackFrom"));
        VersionedPackage versionRolledBackTo = versionedPackageFromJson(json.getJSONObject("versionRolledBackTo"));
        IntArray pendingBackups = convertToIntArray(json.getJSONArray("pendingBackups"));
        ArrayList<PackageRollbackInfo.RestoreInfo> pendingRestores = convertToRestoreInfoArray(json.getJSONArray("pendingRestores"));
        boolean isApex = json.getBoolean("isApex");
        boolean isApkInApex = json.getBoolean("isApkInApex");
        IntArray snapshottedUsers = convertToIntArray(json.getJSONArray("installedUsers"));
        SparseLongArray ceSnapshotInodes = ceSnapshotInodesFromJson(json.getJSONArray("ceSnapshotInodes"));
        int rollbackDataPolicy = json.optInt("rollbackDataPolicy", 0);
        return new PackageRollbackInfo(versionRolledBackFrom, versionRolledBackTo, pendingBackups, pendingRestores, isApex, isApkInApex, snapshottedUsers, ceSnapshotInodes, rollbackDataPolicy);
    }

    private static JSONArray versionedPackagesToJson(List<VersionedPackage> packages) throws JSONException {
        JSONArray json = new JSONArray();
        for (VersionedPackage pkg : packages) {
            json.put(toJson(pkg));
        }
        return json;
    }

    private static List<VersionedPackage> versionedPackagesFromJson(JSONArray json) throws JSONException {
        List<VersionedPackage> packages = new ArrayList<>();
        for (int i = 0; i < json.length(); i++) {
            packages.add(versionedPackageFromJson(json.getJSONObject(i)));
        }
        return packages;
    }

    private static JSONArray toJson(List<PackageRollbackInfo> infos) throws JSONException {
        JSONArray json = new JSONArray();
        for (PackageRollbackInfo info : infos) {
            json.put(toJson(info));
        }
        return json;
    }

    private static List<PackageRollbackInfo> packageRollbackInfosFromJson(JSONArray json) throws JSONException {
        List<PackageRollbackInfo> infos = new ArrayList<>();
        for (int i = 0; i < json.length(); i++) {
            infos.add(packageRollbackInfoFromJson(json.getJSONObject(i)));
        }
        return infos;
    }

    private static void removeFile(File file) {
        if (file.isDirectory()) {
            for (File child : file.listFiles()) {
                removeFile(child);
            }
        }
        if (file.exists()) {
            file.delete();
        }
    }
}
