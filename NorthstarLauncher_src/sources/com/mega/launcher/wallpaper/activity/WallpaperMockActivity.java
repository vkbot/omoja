package com.mega.launcher.wallpaper.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import androidx.core.internal.view.SupportMenu;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.R;
import com.mega.chery.utils.ToastViewUtils;
import com.mega.launcherapi.IWallpaperManagerCallback;
import com.mega.launcherapi.NorthstarWallpaperManagerProxy;
import com.mega.launcherapi.ServiceBindCallback;
import com.mega.launcherapi.WallpaperConstant;
import com.mega.launcherapi.bean.LauncherWallpaper;
import com.mega.launcherapi.exception.BitmapSizeException;
import com.mega.launcherapi.exception.InitializedException;
import com.mega.launcherapi.utils.LiveWallpaperContract;
import com.mega.launcherapi.utils.WallpaperUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class WallpaperMockActivity extends Activity implements View.OnClickListener {
    private static final String AUTHORITY = "com.android.launcher3.preview_provider";
    private static final String TAG = "WallpaperMockActivity";
    private Button mBtnChangeCurrentWallpaper;
    private Button mBtnConnectService;
    private Button mBtnDisableLiveWallpaper;
    private Button mBtnDisconnectService;
    private Button mBtnEnableLiveWallpaper;
    private Button mBtnFakeDeleteGroupWallpaper;
    private Button mBtnFakeDeleteWallpaper;
    private Button mBtnFakeResetSystemWallpaper;
    private Button mBtnFakeSet1GroupWallpaper;
    private Button mBtnFakeSet1Wallpaper;
    private Button mBtnFakeSet5GroupWallpaper;
    private Button mBtnGetAllCustomWallpapers;
    private Button mBtnGetCurrentWallpaper;
    private Button mBtnGetDefaultWallpapers;
    private Button mBtnGetWallpapers;
    private Button mBtnHideWallpaper;
    private Button mBtnListenWallpaperChange;
    private Button mBtnRegisterCallback;
    private Button mBtnReplaceDefaultWallpaper;
    private Button mBtnReplaceUserWallpaper;
    private Button mBtnShowWallpaper;
    private Button mBtnUnregisterCallback;
    private RecyclerView mLiveWallpaperList;
    private final List<String> mWallpaperNames = new ArrayList();
    final IWallpaperManagerCallback mWallpaperManagerCallback = new AnonymousClass1();

    /* JADX INFO: renamed from: com.mega.launcher.wallpaper.activity.WallpaperMockActivity$1, reason: invalid class name */
    class AnonymousClass1 extends IWallpaperManagerCallback.Stub {
        AnonymousClass1() {
        }

        @Override // com.mega.launcherapi.IWallpaperManagerCallback
        public void onWallpaperSetResult(final boolean success, final String name) throws RemoteException {
            MLog.d(WallpaperMockActivity.TAG, "onWallpaperSetResult() called with: success = [" + success + "], name = [" + name + "]");
            WallpaperMockActivity.this.runOnUiThread(new Runnable() { // from class: com.mega.launcher.wallpaper.activity.WallpaperMockActivity$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m276x500ed032(success, name);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onWallpaperSetResult$0$com-mega-launcher-wallpaper-activity-WallpaperMockActivity$1, reason: not valid java name */
        /* synthetic */ void m276x500ed032(boolean z, String str) {
            ToastViewUtils.makeText(WallpaperMockActivity.this, "onWallpaperSetResult() success = [" + z + "], name = [" + str + "]", 3000L).show();
        }

        @Override // com.mega.launcherapi.IWallpaperManagerCallback
        public void onWallpaperChanged(final String name, final int type) throws RemoteException {
            MLog.d(WallpaperMockActivity.TAG, "onWallpaperChanged() called with: name = [" + name + "], type = [" + type + "]");
            WallpaperMockActivity.this.runOnUiThread(new Runnable() { // from class: com.mega.launcher.wallpaper.activity.WallpaperMockActivity$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m274x2e9d8f1c(name, type);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onWallpaperChanged$1$com-mega-launcher-wallpaper-activity-WallpaperMockActivity$1, reason: not valid java name */
        /* synthetic */ void m274x2e9d8f1c(String str, int i) {
            ToastViewUtils.makeText(WallpaperMockActivity.this, "onWallpaperChanged() name = [" + str + "], type = [" + i + "]", 3000L).show();
        }

        @Override // com.mega.launcherapi.IWallpaperManagerCallback
        public void onWallpaperDeleteResult(final int resultCode, final String wallpaperId) {
            MLog.d(WallpaperMockActivity.TAG, "onWallpaperDeleteResult: resultCode = " + resultCode + ", wallpaperId = " + wallpaperId);
            WallpaperMockActivity.this.runOnUiThread(new Runnable() { // from class: com.mega.launcher.wallpaper.activity.WallpaperMockActivity$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m275x2e8232bb(resultCode, wallpaperId);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onWallpaperDeleteResult$2$com-mega-launcher-wallpaper-activity-WallpaperMockActivity$1, reason: not valid java name */
        /* synthetic */ void m275x2e8232bb(int i, String str) {
            ToastViewUtils.makeText(WallpaperMockActivity.this, "onWallpaperDeleteResult() resultCode = [" + i + "], wallpaperId = [" + str + "]", 3000L).show();
        }

        @Override // com.mega.launcherapi.IWallpaperManagerCallback
        public void onCurrentTopWallpaperChanged(final LauncherWallpaper launcherWallpaper) throws RemoteException {
            MLog.d(WallpaperMockActivity.TAG, "onCurrentTopWallpaperChanged: launcherWallpaper = " + launcherWallpaper);
            WallpaperMockActivity.this.runOnUiThread(new Runnable() { // from class: com.mega.launcher.wallpaper.activity.WallpaperMockActivity$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m273x8273689e(launcherWallpaper);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onCurrentTopWallpaperChanged$3$com-mega-launcher-wallpaper-activity-WallpaperMockActivity$1, reason: not valid java name */
        /* synthetic */ void m273x8273689e(LauncherWallpaper launcherWallpaper) {
            ToastViewUtils.makeText(WallpaperMockActivity.this, "onCurrentTopWallpaperChanged()" + launcherWallpaper, 3000L).show();
        }

        @Override // com.mega.launcherapi.IWallpaperManagerCallback
        public void onWallpapersChanged() throws RemoteException {
            MLog.d(WallpaperMockActivity.TAG, "onWallpapersChanged: ");
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_wallpaper_mock);
        initLiveWallpapers();
        initView();
    }

    private void initView() {
        Button button = (Button) findViewById(R.id.btn_connect_service);
        this.mBtnConnectService = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(R.id.btn_disconnect_service);
        this.mBtnDisconnectService = button2;
        button2.setOnClickListener(this);
        Button button3 = (Button) findViewById(R.id.btn_register_callback);
        this.mBtnRegisterCallback = button3;
        button3.setOnClickListener(this);
        Button button4 = (Button) findViewById(R.id.btn_unregister_callback);
        this.mBtnUnregisterCallback = button4;
        button4.setOnClickListener(this);
        Button button5 = (Button) findViewById(R.id.btn_fake_set1_wallpaper);
        this.mBtnFakeSet1Wallpaper = button5;
        button5.setOnClickListener(this);
        Button button6 = (Button) findViewById(R.id.btn_fake_set1_group_wallpaper);
        this.mBtnFakeSet1GroupWallpaper = button6;
        button6.setOnClickListener(this);
        Button button7 = (Button) findViewById(R.id.btn_fake_set5_group_wallpaper);
        this.mBtnFakeSet5GroupWallpaper = button7;
        button7.setOnClickListener(this);
        Button button8 = (Button) findViewById(R.id.btn_listen_wallpaper_change);
        this.mBtnListenWallpaperChange = button8;
        button8.setOnClickListener(this);
        Button button9 = (Button) findViewById(R.id.btn_get_wallpapers);
        this.mBtnGetWallpapers = button9;
        button9.setOnClickListener(this);
        Button button10 = (Button) findViewById(R.id.btn_fake_delete_wallpaper);
        this.mBtnFakeDeleteWallpaper = button10;
        button10.setOnClickListener(this);
        Button button11 = (Button) findViewById(R.id.btn_fake_delete_group_wallpaper);
        this.mBtnFakeDeleteGroupWallpaper = button11;
        button11.setOnClickListener(this);
        Button button12 = (Button) findViewById(R.id.btn_get_custom_wallpapers);
        this.mBtnGetAllCustomWallpapers = button12;
        button12.setOnClickListener(this);
        Button button13 = (Button) findViewById(R.id.btn_get_default_wallpapers);
        this.mBtnGetDefaultWallpapers = button13;
        button13.setOnClickListener(this);
        Button button14 = (Button) findViewById(R.id.btn_replace_default_wallpaper);
        this.mBtnReplaceDefaultWallpaper = button14;
        button14.setOnClickListener(this);
        Button button15 = (Button) findViewById(R.id.btn_replace_user_wallpaper);
        this.mBtnReplaceUserWallpaper = button15;
        button15.setOnClickListener(this);
        Button button16 = (Button) findViewById(R.id.btn_reset_system_wallpaper);
        this.mBtnFakeResetSystemWallpaper = button16;
        button16.setOnClickListener(this);
        Button button17 = (Button) findViewById(R.id.btn_get_current_wallpaper);
        this.mBtnGetCurrentWallpaper = button17;
        button17.setOnClickListener(this);
        Button button18 = (Button) findViewById(R.id.btn_change_current_wallpaper);
        this.mBtnChangeCurrentWallpaper = button18;
        button18.setOnClickListener(this);
        Button button19 = (Button) findViewById(R.id.btn_hide_wallpaper);
        this.mBtnHideWallpaper = button19;
        button19.setOnClickListener(this);
        Button button20 = (Button) findViewById(R.id.btn_show_wallpaper);
        this.mBtnShowWallpaper = button20;
        button20.setOnClickListener(this);
        Button button21 = (Button) findViewById(R.id.btn_enable_live_wallpaper);
        this.mBtnEnableLiveWallpaper = button21;
        button21.setOnClickListener(this);
        Button button22 = (Button) findViewById(R.id.btn_disable_live_wallpaper);
        this.mBtnDisableLiveWallpaper = button22;
        button22.setOnClickListener(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recycler_view);
        this.mLiveWallpaperList = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mLiveWallpaperList.setAdapter(new MyAdapter(this, null));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) throws Throwable {
        switch (v.getId()) {
            case R.id.btn_change_current_wallpaper /* 2131361914 */:
                changeCurrentWallpaper();
                return;
            case R.id.btn_connect_service /* 2131361915 */:
                connectWallpaperService();
                return;
            case R.id.btn_disable_live_wallpaper /* 2131361916 */:
                LiveWallpaperContract.setLiveWallpaperEnabled(v.getContext(), false);
                return;
            case R.id.btn_disconnect_service /* 2131361917 */:
                disconnectWallpaperService();
                return;
            case R.id.btn_enable_live_wallpaper /* 2131361918 */:
                LiveWallpaperContract.setLiveWallpaperEnabled(v.getContext(), true);
                return;
            case R.id.btn_fake_delete_group_wallpaper /* 2131361919 */:
                deleteGroupWallpaper();
                return;
            case R.id.btn_fake_delete_wallpaper /* 2131361920 */:
                deleteWallpaper();
                return;
            case R.id.btn_fake_set1_group_wallpaper /* 2131361921 */:
                final Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.mipmap.launcher_wallpaper400);
                final Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(getResources(), R.mipmap.launcher_wallpaper400_night);
                try {
                    NorthstarWallpaperManagerProxy.getInstance().setLauncherWallpaper("btn_fake_set1_group_wallpaper", bitmapDecodeResource, bitmapDecodeResource2);
                    return;
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                } catch (BitmapSizeException e2) {
                    MLog.e(TAG, "BitmapSizeException: ", e2);
                    new Thread(new Runnable() { // from class: com.mega.launcher.wallpaper.activity.WallpaperMockActivity.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                NorthstarWallpaperManagerProxy.getInstance().setLauncherWallpaper("btn_fake_set1_group_wallpaper", WallpaperUtils.ratioCompress(bitmapDecodeResource), WallpaperUtils.ratioCompress(bitmapDecodeResource2));
                            } catch (RemoteException e3) {
                                throw new RuntimeException(e3);
                            } catch (BitmapSizeException e4) {
                                MLog.e(WallpaperMockActivity.TAG, "BitmapSizeException: ", e4);
                            } catch (InitializedException e5) {
                                MLog.e(WallpaperMockActivity.TAG, "InitializedException: ", e5);
                            }
                        }
                    }).start();
                    return;
                } catch (InitializedException e3) {
                    MLog.e(TAG, "InitializedException: ", e3);
                    return;
                }
            case R.id.btn_fake_set1_wallpaper /* 2131361922 */:
                try {
                    NorthstarWallpaperManagerProxy.getInstance().setWallpaper("btn_fake_set1_wallpaper", BitmapFactory.decodeResource(getResources(), R.mipmap.launcher_wallpaper400));
                    return;
                } catch (RemoteException e4) {
                    throw new RuntimeException(e4);
                } catch (BitmapSizeException e5) {
                    MLog.e(TAG, "BitmapSizeException: ", e5);
                    return;
                } catch (InitializedException e6) {
                    MLog.e(TAG, "InitializedException: ", e6);
                    return;
                }
            case R.id.btn_fake_set5_group_wallpaper /* 2131361923 */:
                Bitmap bitmapDrawNumberOnImage = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400, 1);
                Bitmap bitmapDrawNumberOnImage2 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400_night, 1);
                Bitmap bitmapDrawNumberOnImage3 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400, 2);
                Bitmap bitmapDrawNumberOnImage4 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400_night, 2);
                Bitmap bitmapDrawNumberOnImage5 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400, 3);
                Bitmap bitmapDrawNumberOnImage6 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400_night, 3);
                Bitmap bitmapDrawNumberOnImage7 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400, 4);
                Bitmap bitmapDrawNumberOnImage8 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400_night, 4);
                Bitmap bitmapDrawNumberOnImage9 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400, 5);
                Bitmap bitmapDrawNumberOnImage10 = drawNumberOnImage(this, R.mipmap.launcher_wallpaper400_night, 5);
                try {
                    MLog.d(TAG, "onClick: " + bitmapDrawNumberOnImage.getWidth() + " " + bitmapDrawNumberOnImage.getHeight());
                    NorthstarWallpaperManagerProxy.getInstance().setLauncherWallpapers(Arrays.asList("dayBitmap1", "dayBitmap2", "dayBitmap3", "dayBitmap4", "dayBitmap5"), Arrays.asList(bitmapDrawNumberOnImage, bitmapDrawNumberOnImage3, bitmapDrawNumberOnImage5, bitmapDrawNumberOnImage7, bitmapDrawNumberOnImage9), Arrays.asList(bitmapDrawNumberOnImage2, bitmapDrawNumberOnImage4, bitmapDrawNumberOnImage6, bitmapDrawNumberOnImage8, bitmapDrawNumberOnImage10));
                    return;
                } catch (RemoteException e7) {
                    throw new RuntimeException(e7);
                } catch (BitmapSizeException e8) {
                    MLog.e(TAG, "BitmapSizeException: ", e8);
                    return;
                } catch (InitializedException e9) {
                    MLog.e(TAG, "InitializedException: ", e9);
                    return;
                }
            case R.id.btn_get_current_wallpaper /* 2131361924 */:
                getCurrentWallpaper();
                return;
            case R.id.btn_get_custom_wallpapers /* 2131361925 */:
                getAllCustomWallpapers();
                return;
            case R.id.btn_get_default_wallpapers /* 2131361926 */:
                WallpaperUtils.getAllDefaultWallpapers(this);
                return;
            case R.id.btn_get_wallpapers /* 2131361927 */:
                getWallpapers();
                return;
            case R.id.btn_hide_wallpaper /* 2131361928 */:
                try {
                    NorthstarWallpaperManagerProxy.getInstance().cancelLauncherWallpaper("btn_fake_set1_wallpaper");
                    return;
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                } catch (InitializedException e11) {
                    throw new RuntimeException(e11);
                }
            case R.id.btn_listen_wallpaper_change /* 2131361929 */:
                new WallpaperChangeObserver(this, new Handler(Looper.getMainLooper())).startObserving();
                return;
            case R.id.btn_qsb_search /* 2131361930 */:
            case R.id.btn_qsb_setup /* 2131361931 */:
            default:
                return;
            case R.id.btn_register_callback /* 2131361932 */:
                try {
                    NorthstarWallpaperManagerProxy.getInstance().registerWallpaperManagerCallback(this.mWallpaperManagerCallback);
                    return;
                } catch (InitializedException e12) {
                    MLog.e(TAG, "InitializedException: ", e12);
                    return;
                }
            case R.id.btn_replace_default_wallpaper /* 2131361933 */:
                replaceDefaultWallpaper();
                return;
            case R.id.btn_replace_user_wallpaper /* 2131361934 */:
                replaceUserWallpaper();
                return;
            case R.id.btn_reset_system_wallpaper /* 2131361935 */:
                resetDefaultWallpaper();
                return;
            case R.id.btn_show_wallpaper /* 2131361936 */:
                try {
                    NorthstarWallpaperManagerProxy.getInstance().showLauncherWallpaper("btn_fake_set1_wallpaper");
                    return;
                } catch (RemoteException e13) {
                    throw new RuntimeException(e13);
                } catch (InitializedException e14) {
                    throw new RuntimeException(e14);
                }
            case R.id.btn_unregister_callback /* 2131361937 */:
                try {
                    NorthstarWallpaperManagerProxy.getInstance().unregisterWallpaperManagerCallback(this.mWallpaperManagerCallback);
                    return;
                } catch (InitializedException e15) {
                    MLog.e(TAG, "InitializedException: ", e15);
                    return;
                }
        }
    }

    private void replaceDefaultWallpaper() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.mipmap.launcher_wallpaper400);
        try {
            NorthstarWallpaperManagerProxy.getInstance().setWallpaper(WallpaperUtils.getDefaultWallpaper(this), bitmapDecodeResource);
        } catch (RemoteException | BitmapSizeException | InitializedException e) {
            MLog.e(TAG, "replaceDefaultWallpaper failed: ", e);
        }
    }

    private void replaceUserWallpaper() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.mipmap.launcher_wallpaper400_night);
        Cursor cursorQuery = getContentResolver().query(Uri.parse(WallpaperConstant.WALLPAPER_URI_ALL), null, null, null, null);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                int i = cursorQuery.getInt(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_ID));
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID));
                String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_NAME));
                String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("from"));
                int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_HIDE));
                int i3 = cursorQuery.getInt(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_FLAGS));
                MLog.d(TAG, "replaceUserWallpaper: id = " + i + " wallpaperId = " + string + " name = " + string2 + " from = " + string3 + " hide = " + i2 + " flags=" + i3);
                if ((i3 & 1) == 0) {
                    try {
                        NorthstarWallpaperManagerProxy.getInstance().setWallpaper(string, bitmapDecodeResource);
                        break;
                    } catch (RemoteException | BitmapSizeException | InitializedException e) {
                        MLog.e(TAG, "replaceUserWallpaper failed: ", e);
                    }
                }
            }
            cursorQuery.close();
        }
    }

    private void changeCurrentWallpaper() {
        try {
            MLog.d(TAG, "changeCurrentWallpaper: " + NorthstarWallpaperManagerProxy.getInstance().changeLauncherWallpaper("btn_fake_set1_wallpaper"));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        } catch (InitializedException e2) {
            MLog.e(TAG, "InitializedException: ", e2);
        }
    }

    private void getCurrentWallpaper() {
        try {
            MLog.d(TAG, "getCurrentWallpaper: " + NorthstarWallpaperManagerProxy.getInstance().getCurrentLauncherWallpaper());
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        } catch (InitializedException e2) {
            MLog.e(TAG, "InitializedException: ", e2);
        }
    }

    private void resetDefaultWallpaper() {
        String defaultWallpaper = WallpaperUtils.getDefaultWallpaper(this);
        Log.d(TAG, "resetDefaultWallpaper: " + defaultWallpaper);
        try {
            NorthstarWallpaperManagerProxy.getInstance().resetLauncherSystemWallpaper(defaultWallpaper);
        } catch (InitializedException e) {
            MLog.e(TAG, "InitializedException: ", e);
        }
    }

    private void getAllCustomWallpapers() {
        Cursor cursorQuery = getContentResolver().query(Uri.parse(WallpaperConstant.WALLPAPER_URI_ALL), null, null, null, null);
        if (cursorQuery != null) {
            if (cursorQuery.moveToFirst()) {
                do {
                    MLog.d(TAG, "getAllCustomWallpapers: id = " + cursorQuery.getInt(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_ID)) + " wallpaperId = " + cursorQuery.getString(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID)) + " name = " + cursorQuery.getString(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_NAME)) + " from = " + cursorQuery.getString(cursorQuery.getColumnIndex("from")) + " hide = " + cursorQuery.getInt(cursorQuery.getColumnIndex(WallpaperConstant.WALLPAPER_COLUMN_HIDE)));
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
        }
    }

    private void deleteWallpaper() {
        try {
            NorthstarWallpaperManagerProxy.getInstance().deleteLauncherWallpaper("btn_fake_set1_group_wallpaper");
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        } catch (InitializedException e2) {
            MLog.e(TAG, "InitializedException: ", e2);
        }
    }

    private void deleteGroupWallpaper() {
        try {
            NorthstarWallpaperManagerProxy.getInstance().deleteLauncherWallpapers(Arrays.asList("dayBitmap5", "dayBitmap4", "dayBitmap1", "dayBitmap2", "dayBitmap3"));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        } catch (InitializedException e2) {
            MLog.e(TAG, "InitializedException: ", e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void getWallpapers() throws Throwable {
        InputStream inputStreamOpenInputStream;
        Uri uriForFile = FileProvider.getUriForFile(this, "com.android.launcher3.preview_provider", new File("/sdcard/Wallpapers", "wallpaper_day/bitmap_com.android.launcher3_1_1688370918435.png"));
        MLog.d(TAG, "getWallpapers: uri " + uriForFile);
        Bitmap bitmapDecodeStream = null;
        bitmapDecodeStream = null;
        bitmapDecodeStream = null;
        InputStream inputStream = null;
        try {
            try {
                inputStreamOpenInputStream = getApplicationContext().getContentResolver().openInputStream(uriForFile);
                try {
                    try {
                        bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream);
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream.close();
                        }
                    } catch (FileNotFoundException e) {
                        e = e;
                        e.printStackTrace();
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream.close();
                        }
                        MLog.d(TAG, "getWallpapers: bitmap=" + bitmapDecodeStream);
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStreamOpenInputStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            inputStreamOpenInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
        MLog.d(TAG, "getWallpapers: bitmap=" + bitmapDecodeStream);
    }

    private void connectWallpaperService() {
        MLog.d(TAG, "connectWallpaperService: ");
        NorthstarWallpaperManagerProxy.getInstance().initialized(this, new ServiceBindCallback() { // from class: com.mega.launcher.wallpaper.activity.WallpaperMockActivity.3
            @Override // com.mega.launcherapi.ServiceBindCallback
            public void onServiceConnected(ComponentName name, IBinder service) {
                MLog.d(WallpaperMockActivity.TAG, "onServiceConnected() called with: name = [" + name + "], service = [" + service + "]");
            }

            @Override // com.mega.launcherapi.ServiceBindCallback
            public void onServiceDisconnected(ComponentName name) {
                MLog.d(WallpaperMockActivity.TAG, "onServiceDisconnected() called with: name = [" + name + "]");
            }

            @Override // com.mega.launcherapi.ServiceBindCallback
            public void onBindingDied(ComponentName name) {
                MLog.d(WallpaperMockActivity.TAG, "onBindingDied() called with: name = [" + name + "]");
            }

            @Override // com.mega.launcherapi.ServiceBindCallback
            public void onNullBinding(ComponentName name) {
                MLog.d(WallpaperMockActivity.TAG, "onNullBinding() called with: name = [" + name + "]");
            }
        });
    }

    private void disconnectWallpaperService() {
        MLog.d(TAG, "disconnectWallpaperService: ");
        NorthstarWallpaperManagerProxy.getInstance().deinitialized(this);
    }

    public static Bitmap drawNumberOnImage(Context context, int resId, int number) {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), resId);
        int width = bitmapDecodeResource.getWidth();
        int height = bitmapDecodeResource.getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, bitmapDecodeResource.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmapDecodeResource, 0.0f, 0.0f, (Paint) null);
        Paint paint = new Paint();
        paint.setColor(SupportMenu.CATEGORY_MASK);
        paint.setTextSize(height);
        paint.setAntiAlias(true);
        Rect rect = new Rect();
        paint.getTextBounds("" + number, 0, 1, rect);
        canvas.drawText("" + number, width - rect.width(), height - ((height - rect.height()) / 2), paint);
        return bitmapCreateBitmap;
    }

    public static class WallpaperChangeObserver extends ContentObserver {
        private static final String KEY_USER_WALLPAPER = "user_wallpaper";
        private Context mContext;

        public WallpaperChangeObserver(Context context, Handler handler) {
            super(handler);
            this.mContext = context;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            super.onChange(selfChange, uri);
            if (uri.equals(Settings.Global.getUriFor("user_wallpaper"))) {
                MLog.d(WallpaperMockActivity.TAG, "onChange: KEY_USER_WALLPAPER wallpaperName=" + Settings.Global.getString(this.mContext.getContentResolver(), "user_wallpaper"));
            }
        }

        public void startObserving() {
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("user_wallpaper"), true, this);
        }

        public void stopObserving() {
            this.mContext.getContentResolver().unregisterContentObserver(this);
        }
    }

    private void initLiveWallpapers() {
        File[] fileArrListFiles;
        File file = new File(WallpaperUtils.LIVE_WALLPAPER_DIR);
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            this.mWallpaperNames.add(file2.getName());
        }
    }

    private class MyViewHolder extends RecyclerView.ViewHolder {
        public final TextView tv;

        public MyViewHolder(TextView itemView) {
            super(itemView);
            this.tv = itemView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class MyAdapter extends RecyclerView.Adapter<MyViewHolder> {
        private MyAdapter() {
        }

        /* synthetic */ MyAdapter(WallpaperMockActivity wallpaperMockActivity, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            TextView textView = new TextView(parent.getContext());
            textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            textView.setPadding(24, 12, 24, 12);
            return WallpaperMockActivity.this.new MyViewHolder(textView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(MyViewHolder holder, int position) {
            final String str = (String) WallpaperMockActivity.this.mWallpaperNames.get(position);
            holder.tv.setText(str);
            holder.tv.setOnClickListener(new View.OnClickListener() { // from class: com.mega.launcher.wallpaper.activity.WallpaperMockActivity$MyAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveWallpaperContract.showLiveWallpaper(view.getContext(), str);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return WallpaperMockActivity.this.mWallpaperNames.size();
        }
    }
}
