package androidx.core.provider;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri$Builder;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.FontResourcesParserCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class FontProvider {
    private static final Comparator<byte[]> sByteArrayComparator = new a();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FontProvider() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int a(byte[] bArr, byte[] bArr2) {
        return lambda$static$0(bArr, bArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (!Arrays.equals(list.get(i9), list2.get(i9))) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static List<List<byte[]>> getCertificates(FontRequest fontRequest, Resources resources) {
        return fontRequest.getCertificates() != null ? fontRequest.getCertificates() : FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static FontsContractCompat$FontFamilyResult getFontFamilyResult(@NonNull Context context, @NonNull FontRequest fontRequest, @Nullable CancellationSignal cancellationSignal) throws PackageManager$NameNotFoundException {
        ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
        return provider == null ? FontsContractCompat$FontFamilyResult.create(1, null) : FontsContractCompat$FontFamilyResult.create(0, query(context, fontRequest, provider.authority, cancellationSignal));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @VisibleForTesting
    public static ProviderInfo getProvider(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager$NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager$NameNotFoundException(ai.onnxruntime.a.l("No package found for authority: ", providerAuthority));
        }
        if (!providerInfoResolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
            StringBuilder sbX = ai.onnxruntime.a.x("Found content provider ", providerAuthority, ", but package was not ");
            sbX.append(fontRequest.getProviderPackage());
            throw new PackageManager$NameNotFoundException(sbX.toString());
        }
        List<byte[]> listConvertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listConvertToByteArrayList, sByteArrayComparator);
        List<List<byte[]>> certificates = getCertificates(fontRequest, resources);
        for (int i9 = 0; i9 < certificates.size(); i9++) {
            ArrayList arrayList = new ArrayList(certificates.get(i9));
            Collections.sort(arrayList, sByteArrayComparator);
            if (equalsByteArrayList(listConvertToByteArrayList, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ int lambda$static$0(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i9 = 0; i9 < bArr.length; i9++) {
            byte b9 = bArr[i9];
            byte b10 = bArr2[i9];
            if (b9 != b10) {
                return b9 - b10;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:33:0x00d3  */
    @NonNull
    @VisibleForTesting
    public static FontsContractCompat$FontInfo[] query(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) throws Throwable {
        FontProvider$ContentQueryWrapper fontProvider$ContentQueryWrapper;
        FontProvider$ContentQueryWrapper fontProvider$ContentQueryWrapper2;
        Uri uriWithAppendedId;
        boolean z8;
        ArrayList arrayList = new ArrayList();
        Uri uriBuild = new Uri$Builder().scheme("content").authority(str).build();
        Uri uriBuild2 = new Uri$Builder().scheme("content").authority(str).appendPath("file").build();
        FontProvider$ContentQueryWrapper fontProvider$ContentQueryWrapperMake = FontProvider$ContentQueryWrapper.make(context, uriBuild);
        Cursor cursorQuery = null;
        try {
            cursorQuery = fontProvider$ContentQueryWrapperMake.query(uriBuild, new String[]{"_id", FontsContractCompat$Columns.FILE_ID, FontsContractCompat$Columns.TTC_INDEX, FontsContractCompat$Columns.VARIATION_SETTINGS, FontsContractCompat$Columns.WEIGHT, FontsContractCompat$Columns.ITALIC, FontsContractCompat$Columns.RESULT_CODE}, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
            if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                fontProvider$ContentQueryWrapper2 = fontProvider$ContentQueryWrapperMake;
            } else {
                int columnIndex = cursorQuery.getColumnIndex(FontsContractCompat$Columns.RESULT_CODE);
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursorQuery.getColumnIndex("_id");
                int columnIndex3 = cursorQuery.getColumnIndex(FontsContractCompat$Columns.FILE_ID);
                int columnIndex4 = cursorQuery.getColumnIndex(FontsContractCompat$Columns.TTC_INDEX);
                int columnIndex5 = cursorQuery.getColumnIndex(FontsContractCompat$Columns.WEIGHT);
                int columnIndex6 = cursorQuery.getColumnIndex(FontsContractCompat$Columns.ITALIC);
                while (cursorQuery.moveToNext()) {
                    int i9 = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : 0;
                    int i10 = columnIndex4 != -1 ? cursorQuery.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        fontProvider$ContentQueryWrapper = fontProvider$ContentQueryWrapperMake;
                        try {
                            uriWithAppendedId = ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndex2));
                        } catch (Throwable th) {
                            th = th;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            fontProvider$ContentQueryWrapper.close();
                            throw th;
                        }
                    } else {
                        fontProvider$ContentQueryWrapper = fontProvider$ContentQueryWrapperMake;
                        uriWithAppendedId = ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex3));
                    }
                    int i11 = columnIndex5 != -1 ? cursorQuery.getInt(columnIndex5) : 400;
                    if (columnIndex6 != -1) {
                        z8 = true;
                        if (cursorQuery.getInt(columnIndex6) != 1) {
                            z8 = false;
                        }
                    } else {
                        z8 = false;
                    }
                    arrayList2.add(FontsContractCompat$FontInfo.create(uriWithAppendedId, i10, i11, z8, i9));
                    fontProvider$ContentQueryWrapperMake = fontProvider$ContentQueryWrapper;
                }
                fontProvider$ContentQueryWrapper2 = fontProvider$ContentQueryWrapperMake;
                arrayList = arrayList2;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            fontProvider$ContentQueryWrapper2.close();
            return (FontsContractCompat$FontInfo[]) arrayList.toArray(new FontsContractCompat$FontInfo[0]);
        } catch (Throwable th2) {
            th = th2;
            fontProvider$ContentQueryWrapper = fontProvider$ContentQueryWrapperMake;
        }
    }
}
