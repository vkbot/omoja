package com.android.launcher3.views;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.android.launcher3.R;
import com.mega.chery.utils.CheryCountryArea;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class FestivalImageView extends AppCompatImageView {
    private static final String ACTION_ACTIVE_SCENE = "ACTION_ACTIVE_SCENE";
    public static final String ACTION_HIDE_FESTIVAL = "com.lion.scenemode.external.ACTION_LAUNCHER_SCENE_HIDE";
    public static final String ACTION_SHOW_FESTIVAL = "com.lion.scenemode.external.ACTION_LAUNCHER_SCENE";
    private static final String CONTENT = "content";
    private static final String ID = "id";
    private static final String PACKAGE_ACTIVE_SCENE = "PACKAGE_ACTIVE_SCENE";
    private static final String TYPE = "type";
    private String mActionScene;
    private String mContent;
    private int mId;
    private String mPackageScene;
    private int mType;

    public FestivalImageView(Context context) {
        super(context);
    }

    public FestivalImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public FestivalImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setFestivalIntent(Intent intent) {
        this.mContent = intent.getStringExtra(CONTENT);
        this.mActionScene = intent.getStringExtra(ACTION_ACTIVE_SCENE);
        this.mPackageScene = intent.getStringExtra(PACKAGE_ACTIVE_SCENE);
        this.mType = intent.getIntExtra("type", 0);
        this.mId = intent.getIntExtra("id", 0);
        setFestivalDay(this.mContent);
        MLog.d(toString());
    }

    private void setFestivalDay(String day) {
        if (day == null) {
            return;
        }
        if (day.contains(CheryCountryArea.KEY_CHINA)) {
            setImageResource(R.drawable.img_festival_spring);
        } else if (day.contains(CheryCountryArea.KEY_CHILE)) {
            setImageResource(R.drawable.img_festival_dragon);
        } else if (day.contains("2")) {
            setImageResource(R.drawable.img_festival_mid_autumn);
        } else if (day.contains("3")) {
            setImageResource(R.drawable.img_festival_national);
        } else if (day.contains(CheryCountryArea.KEY_BRAZIL)) {
            setImageResource(R.drawable.img_festival_qixi);
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.views.FestivalImageView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m175xd18abd8c(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setFestivalDay$0$com-android-launcher3-views-FestivalImageView, reason: not valid java name */
    /* synthetic */ void m175xd18abd8c(View view) {
        openFestival();
    }

    public void openFestival() {
        Intent intent = new Intent(this.mActionScene);
        intent.setPackage(this.mPackageScene);
        intent.putExtra(CONTENT, this.mContent);
        intent.putExtra("type", this.mType);
        intent.putExtra("id", this.mId);
        getContext().startService(intent);
    }

    @Override // android.view.View
    public String toString() {
        return "FestivalImageView{mContent='" + this.mContent + "', mActionScene='" + this.mActionScene + "', mPackageScene='" + this.mPackageScene + "', mType=" + this.mType + ", mId=" + this.mId + '}';
    }
}
