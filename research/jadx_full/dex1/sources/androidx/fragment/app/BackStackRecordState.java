package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle$State;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class BackStackRecordState implements Parcelable {
    public static final Parcelable$Creator<BackStackRecordState> CREATOR = new BackStackRecordState$1();
    private static final String TAG = "FragmentManager";
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int[] mCurrentMaxLifecycleStates;
    final ArrayList<String> mFragmentWhos;
    final int mIndex;
    final String mName;
    final int[] mOldMaxLifecycleStates;
    final int[] mOps;
    final boolean mReorderingAllowed;
    final ArrayList<String> mSharedElementSourceNames;
    final ArrayList<String> mSharedElementTargetNames;
    final int mTransition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BackStackRecordState(BackStackRecord backStackRecord) {
        int size = backStackRecord.mOps.size();
        this.mOps = new int[size * 6];
        if (!backStackRecord.mAddToBackStack) {
            j1.i.l("Not on back stack");
            throw null;
        }
        this.mFragmentWhos = new ArrayList<>(size);
        this.mOldMaxLifecycleStates = new int[size];
        this.mCurrentMaxLifecycleStates = new int[size];
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransaction$Op fragmentTransaction$Op = backStackRecord.mOps.get(i10);
            int i11 = i9 + 1;
            this.mOps[i9] = fragmentTransaction$Op.mCmd;
            ArrayList<String> arrayList = this.mFragmentWhos;
            Fragment fragment = fragmentTransaction$Op.mFragment;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.mOps;
            iArr[i11] = fragmentTransaction$Op.mFromExpandedOp ? 1 : 0;
            iArr[i9 + 2] = fragmentTransaction$Op.mEnterAnim;
            iArr[i9 + 3] = fragmentTransaction$Op.mExitAnim;
            int i12 = i9 + 5;
            iArr[i9 + 4] = fragmentTransaction$Op.mPopEnterAnim;
            i9 += 6;
            iArr[i12] = fragmentTransaction$Op.mPopExitAnim;
            this.mOldMaxLifecycleStates[i10] = fragmentTransaction$Op.mOldMaxState.ordinal();
            this.mCurrentMaxLifecycleStates[i10] = fragmentTransaction$Op.mCurrentMaxState.ordinal();
        }
        this.mTransition = backStackRecord.mTransition;
        this.mName = backStackRecord.mName;
        this.mIndex = backStackRecord.mIndex;
        this.mBreadCrumbTitleRes = backStackRecord.mBreadCrumbTitleRes;
        this.mBreadCrumbTitleText = backStackRecord.mBreadCrumbTitleText;
        this.mBreadCrumbShortTitleRes = backStackRecord.mBreadCrumbShortTitleRes;
        this.mBreadCrumbShortTitleText = backStackRecord.mBreadCrumbShortTitleText;
        this.mSharedElementSourceNames = backStackRecord.mSharedElementSourceNames;
        this.mSharedElementTargetNames = backStackRecord.mSharedElementTargetNames;
        this.mReorderingAllowed = backStackRecord.mReorderingAllowed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fillInBackStackRecord(@NonNull BackStackRecord backStackRecord) {
        int i9 = 0;
        int i10 = 0;
        while (true) {
            boolean z8 = true;
            if (i9 >= this.mOps.length) {
                backStackRecord.mTransition = this.mTransition;
                backStackRecord.mName = this.mName;
                backStackRecord.mAddToBackStack = true;
                backStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
                backStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
                backStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
                backStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
                backStackRecord.mSharedElementSourceNames = this.mSharedElementSourceNames;
                backStackRecord.mSharedElementTargetNames = this.mSharedElementTargetNames;
                backStackRecord.mReorderingAllowed = this.mReorderingAllowed;
                return;
            }
            FragmentTransaction$Op fragmentTransaction$Op = new FragmentTransaction$Op();
            int i11 = i9 + 1;
            fragmentTransaction$Op.mCmd = this.mOps[i9];
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i10 + " base fragment #" + this.mOps[i11]);
            }
            fragmentTransaction$Op.mOldMaxState = Lifecycle$State.values()[this.mOldMaxLifecycleStates[i10]];
            fragmentTransaction$Op.mCurrentMaxState = Lifecycle$State.values()[this.mCurrentMaxLifecycleStates[i10]];
            int[] iArr = this.mOps;
            int i12 = i9 + 2;
            if (iArr[i11] == 0) {
                z8 = false;
            }
            fragmentTransaction$Op.mFromExpandedOp = z8;
            int i13 = iArr[i12];
            fragmentTransaction$Op.mEnterAnim = i13;
            int i14 = iArr[i9 + 3];
            fragmentTransaction$Op.mExitAnim = i14;
            int i15 = i9 + 5;
            int i16 = iArr[i9 + 4];
            fragmentTransaction$Op.mPopEnterAnim = i16;
            i9 += 6;
            int i17 = iArr[i15];
            fragmentTransaction$Op.mPopExitAnim = i17;
            backStackRecord.mEnterAnim = i13;
            backStackRecord.mExitAnim = i14;
            backStackRecord.mPopEnterAnim = i16;
            backStackRecord.mPopExitAnim = i17;
            backStackRecord.addOp(fragmentTransaction$Op);
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public BackStackRecord instantiate(@NonNull FragmentManager fragmentManager, @NonNull Map<String, Fragment> map) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        fillInBackStackRecord(backStackRecord);
        for (int i9 = 0; i9 < this.mFragmentWhos.size(); i9++) {
            String str = this.mFragmentWhos.get(i9);
            if (str != null) {
                Fragment fragment = map.get(str);
                if (fragment == null) {
                    throw new IllegalStateException("Restoring FragmentTransaction " + this.mName + " failed due to missing saved state for Fragment (" + str + ")");
                }
                backStackRecord.mOps.get(i9).mFragment = fragment;
            }
        }
        return backStackRecord;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeIntArray(this.mOps);
        parcel.writeStringList(this.mFragmentWhos);
        parcel.writeIntArray(this.mOldMaxLifecycleStates);
        parcel.writeIntArray(this.mCurrentMaxLifecycleStates);
        parcel.writeInt(this.mTransition);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
        parcel.writeStringList(this.mSharedElementSourceNames);
        parcel.writeStringList(this.mSharedElementTargetNames);
        parcel.writeInt(this.mReorderingAllowed ? 1 : 0);
    }

    @NonNull
    public BackStackRecord instantiate(@NonNull FragmentManager fragmentManager) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        fillInBackStackRecord(backStackRecord);
        backStackRecord.mIndex = this.mIndex;
        for (int i9 = 0; i9 < this.mFragmentWhos.size(); i9++) {
            String str = this.mFragmentWhos.get(i9);
            if (str != null) {
                backStackRecord.mOps.get(i9).mFragment = fragmentManager.findActiveFragment(str);
            }
        }
        backStackRecord.bumpBackStackNesting(1);
        return backStackRecord;
    }

    public BackStackRecordState(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mFragmentWhos = parcel.createStringArrayList();
        this.mOldMaxLifecycleStates = parcel.createIntArray();
        this.mCurrentMaxLifecycleStates = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        Parcelable$Creator parcelable$Creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.mBreadCrumbTitleText = (CharSequence) parcelable$Creator.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = (CharSequence) parcelable$Creator.createFromParcel(parcel);
        this.mSharedElementSourceNames = parcel.createStringArrayList();
        this.mSharedElementTargetNames = parcel.createStringArrayList();
        this.mReorderingAllowed = parcel.readInt() != 0;
    }
}
