package androidx.core.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.activity.j;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.collection.ArraySet;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.net.UriCompat;
import androidx.core.util.Preconditions;
import j1.i;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ShortcutInfoCompat$Builder {
    private Map<String, Map<String, List<String>>> mCapabilityBindingParams;
    private Set<String> mCapabilityBindings;
    private final ShortcutInfoCompat mInfo;
    private boolean mIsConversation;
    private Uri mSliceUri;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(25)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ShortcutInfoCompat$Builder(@NonNull Context context, @NonNull ShortcutInfo shortcutInfo) {
        ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
        this.mInfo = shortcutInfoCompat;
        shortcutInfoCompat.mContext = context;
        shortcutInfoCompat.mId = a.l(shortcutInfo);
        shortcutInfoCompat.mPackageName = a.x(shortcutInfo);
        Intent[] intentArrV = a.v(shortcutInfo);
        shortcutInfoCompat.mIntents = (Intent[]) Arrays.copyOf(intentArrV, intentArrV.length);
        shortcutInfoCompat.mActivity = a.c(shortcutInfo);
        shortcutInfoCompat.mLabel = a.k(shortcutInfo);
        shortcutInfoCompat.mLongLabel = a.w(shortcutInfo);
        shortcutInfoCompat.mDisabledMessage = a.A(shortcutInfo);
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 28) {
            shortcutInfoCompat.mDisabledReason = j.a(shortcutInfo);
        } else {
            shortcutInfoCompat.mDisabledReason = a.D(shortcutInfo) ? 0 : 3;
        }
        shortcutInfoCompat.mCategories = a.m(shortcutInfo);
        shortcutInfoCompat.mPersons = ShortcutInfoCompat.getPersonsFromExtra(a.i(shortcutInfo));
        shortcutInfoCompat.mUser = a.j(shortcutInfo);
        shortcutInfoCompat.mLastChangedTimestamp = a.b(shortcutInfo);
        if (i9 >= 30) {
            shortcutInfoCompat.mIsCached = b.w(shortcutInfo);
        }
        shortcutInfoCompat.mIsDynamic = a.u(shortcutInfo);
        shortcutInfoCompat.mIsPinned = a.z(shortcutInfo);
        shortcutInfoCompat.mIsDeclaredInManifest = a.B(shortcutInfo);
        shortcutInfoCompat.mIsImmutable = a.C(shortcutInfo);
        shortcutInfoCompat.mIsEnabled = a.D(shortcutInfo);
        shortcutInfoCompat.mHasKeyFieldsOnly = c.l(shortcutInfo);
        shortcutInfoCompat.mLocusId = ShortcutInfoCompat.getLocusId(shortcutInfo);
        shortcutInfoCompat.mRank = a.a(shortcutInfo);
        shortcutInfoCompat.mExtras = a.i(shortcutInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder addCapabilityBinding(@NonNull String str, @NonNull String str2, @NonNull List<String> list) {
        addCapabilityBinding(str);
        if (!list.isEmpty()) {
            if (this.mCapabilityBindingParams == null) {
                this.mCapabilityBindingParams = new HashMap();
            }
            if (this.mCapabilityBindingParams.get(str) == null) {
                this.mCapabilityBindingParams.put(str, new HashMap());
            }
            this.mCapabilityBindingParams.get(str).put(str2, list);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat build() {
        if (TextUtils.isEmpty(this.mInfo.mLabel)) {
            i.k("Shortcut must have a non-empty label");
            return null;
        }
        ShortcutInfoCompat shortcutInfoCompat = this.mInfo;
        Intent[] intentArr = shortcutInfoCompat.mIntents;
        if (intentArr == null || intentArr.length == 0) {
            i.k("Shortcut must have an intent");
            return null;
        }
        if (this.mIsConversation) {
            if (shortcutInfoCompat.mLocusId == null) {
                shortcutInfoCompat.mLocusId = new LocusIdCompat(shortcutInfoCompat.mId);
            }
            this.mInfo.mIsLongLived = true;
        }
        if (this.mCapabilityBindings != null) {
            ShortcutInfoCompat shortcutInfoCompat2 = this.mInfo;
            if (shortcutInfoCompat2.mCategories == null) {
                shortcutInfoCompat2.mCategories = new HashSet();
            }
            this.mInfo.mCategories.addAll(this.mCapabilityBindings);
        }
        if (this.mCapabilityBindingParams != null) {
            ShortcutInfoCompat shortcutInfoCompat3 = this.mInfo;
            if (shortcutInfoCompat3.mExtras == null) {
                shortcutInfoCompat3.mExtras = new PersistableBundle();
            }
            for (String str : this.mCapabilityBindingParams.keySet()) {
                Map<String, List<String>> map = this.mCapabilityBindingParams.get(str);
                this.mInfo.mExtras.putStringArray(str, (String[]) map.keySet().toArray(new String[0]));
                for (String str2 : map.keySet()) {
                    List<String> list = map.get(str2);
                    this.mInfo.mExtras.putStringArray(ai.onnxruntime.a.D(str, "/", str2), list == null ? new String[0] : (String[]) list.toArray(new String[0]));
                }
            }
        }
        if (this.mSliceUri != null) {
            ShortcutInfoCompat shortcutInfoCompat4 = this.mInfo;
            if (shortcutInfoCompat4.mExtras == null) {
                shortcutInfoCompat4.mExtras = new PersistableBundle();
            }
            this.mInfo.mExtras.putString("extraSliceUri", UriCompat.toSafeString(this.mSliceUri));
        }
        return this.mInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setActivity(@NonNull ComponentName componentName) {
        this.mInfo.mActivity = componentName;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setAlwaysBadged() {
        this.mInfo.mIsAlwaysBadged = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setCategories(@NonNull Set<String> set) {
        ArraySet arraySet = new ArraySet();
        arraySet.addAll(set);
        this.mInfo.mCategories = arraySet;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setDisabledMessage(@NonNull CharSequence charSequence) {
        this.mInfo.mDisabledMessage = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setExcludedFromSurfaces(int i9) {
        this.mInfo.mExcludedSurfaces = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setExtras(@NonNull PersistableBundle persistableBundle) {
        this.mInfo.mExtras = persistableBundle;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setIcon(IconCompat iconCompat) {
        this.mInfo.mIcon = iconCompat;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setIntent(@NonNull Intent intent) {
        return setIntents(new Intent[]{intent});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setIntents(@NonNull Intent[] intentArr) {
        this.mInfo.mIntents = intentArr;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setIsConversation() {
        this.mIsConversation = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
        this.mInfo.mLocusId = locusIdCompat;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setLongLabel(@NonNull CharSequence charSequence) {
        this.mInfo.mLongLabel = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public ShortcutInfoCompat$Builder setLongLived() {
        this.mInfo.mIsLongLived = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setPerson(@NonNull Person person) {
        return setPersons(new Person[]{person});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setPersons(@NonNull Person[] personArr) {
        this.mInfo.mPersons = personArr;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setRank(int i9) {
        this.mInfo.mRank = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setShortLabel(@NonNull CharSequence charSequence) {
        this.mInfo.mLabel = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ShortcutInfoCompat$Builder setSliceUri(@NonNull Uri uri) {
        this.mSliceUri = uri;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ShortcutInfoCompat$Builder setTransientExtras(@NonNull Bundle bundle) {
        this.mInfo.mTransientExtras = (Bundle) Preconditions.checkNotNull(bundle);
        return this;
    }

    @NonNull
    public ShortcutInfoCompat$Builder setLongLived(boolean z8) {
        this.mInfo.mIsLongLived = z8;
        return this;
    }

    @NonNull
    public ShortcutInfoCompat$Builder addCapabilityBinding(@NonNull String str) {
        if (this.mCapabilityBindings == null) {
            this.mCapabilityBindings = new HashSet();
        }
        this.mCapabilityBindings.add(str);
        return this;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ShortcutInfoCompat$Builder(@NonNull ShortcutInfoCompat shortcutInfoCompat) {
        ShortcutInfoCompat shortcutInfoCompat2 = new ShortcutInfoCompat();
        this.mInfo = shortcutInfoCompat2;
        shortcutInfoCompat2.mContext = shortcutInfoCompat.mContext;
        shortcutInfoCompat2.mId = shortcutInfoCompat.mId;
        shortcutInfoCompat2.mPackageName = shortcutInfoCompat.mPackageName;
        Intent[] intentArr = shortcutInfoCompat.mIntents;
        shortcutInfoCompat2.mIntents = (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
        shortcutInfoCompat2.mActivity = shortcutInfoCompat.mActivity;
        shortcutInfoCompat2.mLabel = shortcutInfoCompat.mLabel;
        shortcutInfoCompat2.mLongLabel = shortcutInfoCompat.mLongLabel;
        shortcutInfoCompat2.mDisabledMessage = shortcutInfoCompat.mDisabledMessage;
        shortcutInfoCompat2.mDisabledReason = shortcutInfoCompat.mDisabledReason;
        shortcutInfoCompat2.mIcon = shortcutInfoCompat.mIcon;
        shortcutInfoCompat2.mIsAlwaysBadged = shortcutInfoCompat.mIsAlwaysBadged;
        shortcutInfoCompat2.mUser = shortcutInfoCompat.mUser;
        shortcutInfoCompat2.mLastChangedTimestamp = shortcutInfoCompat.mLastChangedTimestamp;
        shortcutInfoCompat2.mIsCached = shortcutInfoCompat.mIsCached;
        shortcutInfoCompat2.mIsDynamic = shortcutInfoCompat.mIsDynamic;
        shortcutInfoCompat2.mIsPinned = shortcutInfoCompat.mIsPinned;
        shortcutInfoCompat2.mIsDeclaredInManifest = shortcutInfoCompat.mIsDeclaredInManifest;
        shortcutInfoCompat2.mIsImmutable = shortcutInfoCompat.mIsImmutable;
        shortcutInfoCompat2.mIsEnabled = shortcutInfoCompat.mIsEnabled;
        shortcutInfoCompat2.mLocusId = shortcutInfoCompat.mLocusId;
        shortcutInfoCompat2.mIsLongLived = shortcutInfoCompat.mIsLongLived;
        shortcutInfoCompat2.mHasKeyFieldsOnly = shortcutInfoCompat.mHasKeyFieldsOnly;
        shortcutInfoCompat2.mRank = shortcutInfoCompat.mRank;
        Person[] personArr = shortcutInfoCompat.mPersons;
        if (personArr != null) {
            shortcutInfoCompat2.mPersons = (Person[]) Arrays.copyOf(personArr, personArr.length);
        }
        if (shortcutInfoCompat.mCategories != null) {
            shortcutInfoCompat2.mCategories = new HashSet(shortcutInfoCompat.mCategories);
        }
        PersistableBundle persistableBundle = shortcutInfoCompat.mExtras;
        if (persistableBundle != null) {
            shortcutInfoCompat2.mExtras = persistableBundle;
        }
        shortcutInfoCompat2.mExcludedSurfaces = shortcutInfoCompat.mExcludedSurfaces;
    }

    public ShortcutInfoCompat$Builder(@NonNull Context context, @NonNull String str) {
        ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
        this.mInfo = shortcutInfoCompat;
        shortcutInfoCompat.mContext = context;
        shortcutInfoCompat.mId = str;
    }
}
