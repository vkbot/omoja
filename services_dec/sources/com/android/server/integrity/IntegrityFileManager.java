package com.android.server.integrity;

import android.content.integrity.AppInstallMetadata;
import android.content.integrity.Rule;
import android.os.Environment;
import android.util.Slog;
import com.android.server.integrity.model.RuleMetadata;
import com.android.server.integrity.parser.RandomAccessObject;
import com.android.server.integrity.parser.RuleBinaryParser;
import com.android.server.integrity.parser.RuleIndexRange;
import com.android.server.integrity.parser.RuleIndexingController;
import com.android.server.integrity.parser.RuleMetadataParser;
import com.android.server.integrity.parser.RuleParseException;
import com.android.server.integrity.parser.RuleParser;
import com.android.server.integrity.serializer.RuleBinarySerializer;
import com.android.server.integrity.serializer.RuleMetadataSerializer;
import com.android.server.integrity.serializer.RuleSerializeException;
import com.android.server.integrity.serializer.RuleSerializer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public class IntegrityFileManager {
    private static final String INDEXING_FILE = "indexing";
    private static final String METADATA_FILE = "metadata";
    private static final String RULES_FILE = "rules";
    private static final String TAG = "IntegrityFileManager";
    private final File mDataDir;
    private RuleIndexingController mRuleIndexingController;
    private RuleMetadata mRuleMetadataCache;
    private final RuleParser mRuleParser;
    private final RuleSerializer mRuleSerializer;
    private final File mRulesDir;
    private final File mStagingDir;
    private static final Object RULES_LOCK = new Object();
    private static IntegrityFileManager sInstance = null;

    public static synchronized IntegrityFileManager getInstance() {
        if (sInstance == null) {
            sInstance = new IntegrityFileManager();
        }
        return sInstance;
    }

    private IntegrityFileManager() {
        this(new RuleBinaryParser(), new RuleBinarySerializer(), Environment.getDataSystemDirectory());
    }

    IntegrityFileManager(RuleParser ruleParser, RuleSerializer ruleSerializer, File dataDir) {
        this.mRuleParser = ruleParser;
        this.mRuleSerializer = ruleSerializer;
        this.mDataDir = dataDir;
        this.mRulesDir = new File(dataDir, "integrity_rules");
        File file = new File(dataDir, "integrity_staging");
        this.mStagingDir = file;
        if (!file.mkdirs() || !this.mRulesDir.mkdirs()) {
            Slog.e(TAG, "Error creating staging and rules directory");
        }
        File metadataFile = new File(this.mRulesDir, METADATA_FILE);
        if (metadataFile.exists()) {
            try {
                FileInputStream inputStream = new FileInputStream(metadataFile);
                try {
                    this.mRuleMetadataCache = RuleMetadataParser.parse(inputStream);
                    inputStream.close();
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
                Slog.e(TAG, "Error reading metadata file.", e);
            }
        }
        updateRuleIndexingController();
    }

    public boolean initialized() {
        return new File(this.mRulesDir, RULES_FILE).exists() && new File(this.mRulesDir, METADATA_FILE).exists() && new File(this.mRulesDir, INDEXING_FILE).exists();
    }

    public void writeRules(String version, String ruleProvider, List<Rule> rules) throws RuleSerializeException, IOException {
        try {
            writeMetadata(this.mStagingDir, ruleProvider, version);
        } catch (IOException e) {
            Slog.e(TAG, "Error writing metadata.", e);
        }
        FileOutputStream ruleFileOutputStream = new FileOutputStream(new File(this.mStagingDir, RULES_FILE));
        try {
            FileOutputStream indexingFileOutputStream = new FileOutputStream(new File(this.mStagingDir, INDEXING_FILE));
            try {
                this.mRuleSerializer.serialize(rules, Optional.empty(), ruleFileOutputStream, indexingFileOutputStream);
                indexingFileOutputStream.close();
                ruleFileOutputStream.close();
                switchStagingRulesDir();
                updateRuleIndexingController();
            } catch (Throwable th) {
                try {
                    indexingFileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                ruleFileOutputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public List<Rule> readRules(AppInstallMetadata appInstallMetadata) throws IOException, RuleParseException {
        List<Rule> rules;
        synchronized (RULES_LOCK) {
            List<RuleIndexRange> ruleReadingIndexes = Collections.emptyList();
            if (appInstallMetadata != null) {
                try {
                    ruleReadingIndexes = this.mRuleIndexingController.identifyRulesToEvaluate(appInstallMetadata);
                } catch (Exception e) {
                    Slog.w(TAG, "Error identifying the rule indexes. Trying unindexed.", e);
                }
                File ruleFile = new File(this.mRulesDir, RULES_FILE);
                rules = this.mRuleParser.parse(RandomAccessObject.ofFile(ruleFile), ruleReadingIndexes);
            } else {
                File ruleFile2 = new File(this.mRulesDir, RULES_FILE);
                rules = this.mRuleParser.parse(RandomAccessObject.ofFile(ruleFile2), ruleReadingIndexes);
            }
            throw th;
        }
        return rules;
    }

    public RuleMetadata readMetadata() {
        return this.mRuleMetadataCache;
    }

    private void switchStagingRulesDir() throws IOException {
        synchronized (RULES_LOCK) {
            File tmpDir = new File(this.mDataDir, "temp");
            if (!this.mRulesDir.renameTo(tmpDir) || !this.mStagingDir.renameTo(this.mRulesDir) || !tmpDir.renameTo(this.mStagingDir)) {
                throw new IOException("Error switching staging/rules directory");
            }
            for (File file : this.mStagingDir.listFiles()) {
                file.delete();
            }
        }
    }

    private void updateRuleIndexingController() {
        File ruleIndexingFile = new File(this.mRulesDir, INDEXING_FILE);
        if (ruleIndexingFile.exists()) {
            try {
                FileInputStream inputStream = new FileInputStream(ruleIndexingFile);
                try {
                    this.mRuleIndexingController = new RuleIndexingController(inputStream);
                    inputStream.close();
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
                Slog.e(TAG, "Error parsing the rule indexing file.", e);
            }
        }
    }

    private void writeMetadata(File directory, String ruleProvider, String version) throws IOException {
        this.mRuleMetadataCache = new RuleMetadata(ruleProvider, version);
        File metadataFile = new File(directory, METADATA_FILE);
        FileOutputStream outputStream = new FileOutputStream(metadataFile);
        try {
            RuleMetadataSerializer.serialize(this.mRuleMetadataCache, outputStream);
            outputStream.close();
        } catch (Throwable th) {
            try {
                outputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
