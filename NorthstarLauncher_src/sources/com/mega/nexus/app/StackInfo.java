package com.mega.nexus.app;

import android.content.ComponentName;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class StackInfo implements Parcelable {
    public static final Parcelable.Creator<StackInfo> CREATOR = new Parcelable.Creator<StackInfo>() { // from class: com.mega.nexus.app.StackInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StackInfo createFromParcel(Parcel parcel) {
            return new StackInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StackInfo[] newArray(int i) {
            return new StackInfo[i];
        }
    };
    public Rect bounds;
    public int displayId;
    public int position;
    public int stackId;
    public Rect[] taskBounds;
    public int[] taskIds;
    public String[] taskNames;
    public int[] taskUserIds;
    public ComponentName topActivity;
    public int userId;
    public boolean visible;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.stackId);
        parcel.writeInt(this.bounds.left);
        parcel.writeInt(this.bounds.top);
        parcel.writeInt(this.bounds.right);
        parcel.writeInt(this.bounds.bottom);
        parcel.writeIntArray(this.taskIds);
        parcel.writeStringArray(this.taskNames);
        Rect[] rectArr = this.taskBounds;
        int length = rectArr == null ? 0 : rectArr.length;
        parcel.writeInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            parcel.writeInt(this.taskBounds[i2].left);
            parcel.writeInt(this.taskBounds[i2].top);
            parcel.writeInt(this.taskBounds[i2].right);
            parcel.writeInt(this.taskBounds[i2].bottom);
        }
        parcel.writeIntArray(this.taskUserIds);
        parcel.writeInt(this.displayId);
        parcel.writeInt(this.userId);
        parcel.writeInt(this.visible ? 1 : 0);
        parcel.writeInt(this.position);
        if (this.topActivity != null) {
            parcel.writeInt(1);
            this.topActivity.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
    }

    public void readFromParcel(Parcel parcel) {
        this.stackId = parcel.readInt();
        this.bounds = new Rect(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        this.taskIds = parcel.createIntArray();
        this.taskNames = parcel.createStringArray();
        int i = parcel.readInt();
        if (i > 0) {
            this.taskBounds = new Rect[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.taskBounds[i2] = new Rect();
                this.taskBounds[i2].set(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            }
        } else {
            this.taskBounds = null;
        }
        this.taskUserIds = parcel.createIntArray();
        this.displayId = parcel.readInt();
        this.userId = parcel.readInt();
        this.visible = parcel.readInt() > 0;
        this.position = parcel.readInt();
        if (parcel.readInt() > 0) {
            this.topActivity = ComponentName.readFromParcel(parcel);
        }
    }

    public StackInfo() {
        this.bounds = new Rect();
    }

    private StackInfo(Parcel parcel) {
        this.bounds = new Rect();
        readFromParcel(parcel);
    }

    public String toString(String str) {
        StringBuilder sb = new StringBuilder(256);
        sb.append(str);
        sb.append("Stack id=");
        sb.append(this.stackId);
        sb.append(" bounds=");
        sb.append(this.bounds.toShortString());
        sb.append(" displayId=");
        sb.append(this.displayId);
        sb.append(" userId=");
        sb.append(this.userId);
        sb.append("\n");
        String str2 = str + "  ";
        for (int i = 0; i < this.taskIds.length; i++) {
            sb.append(str2);
            sb.append("taskId=");
            sb.append(this.taskIds[i]);
            sb.append(": ");
            sb.append(this.taskNames[i]);
            if (this.taskBounds != null) {
                sb.append(" bounds=");
                sb.append(this.taskBounds[i].toShortString());
            }
            sb.append(" userId=").append(this.taskUserIds[i]);
            sb.append(" visible=").append(this.visible);
            if (this.topActivity != null) {
                sb.append(" topActivity=").append(this.topActivity);
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public String toString() {
        return toString("");
    }
}
