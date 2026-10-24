.class public Lcom/mega/ota/test/UpdateDialog;
.super Landroid/app/Activity;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;
.implements Lcom/mega/ota/test/IUsbListener;
.implements Landroid/os/Handler$Callback;
.implements Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
.implements Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
.implements Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/ota/test/UpdateDialog$Status;,
        Lcom/mega/ota/test/UpdateDialog$upgradeType;
    }
.end annotation


# static fields
.field private static SYS_UPDATE_PACKAGE_ENABLE_DOCUMENUI:Ljava/lang/String; = null

.field private static SYS_UPDATE_PACKAGE_ENABLE_ZIP:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UpdateDialog"

.field private static mAlertDialog:Landroid/app/AlertDialog;

.field private static mApaCopySuccess:Z

.field private static mApaFilePath:Ljava/lang/String;

.field private static mCbfFileName:Ljava/lang/String;

.field private static mCbfFilePathAndName:[Ljava/lang/String;

.field private static mDestCbfFilePath:Ljava/lang/String;

.field private static mDestRsaFilePath:Ljava/lang/String;

.field private static mFailedReason:Ljava/lang/String;

.field private static mIsApaUpgrade:Z

.field private static mIsSignatureVerifySuccess:Z

.field private static mIsSocUpgrade:Z

.field private static mRsaFileName:Ljava/lang/String;

.field private static mZipFileName:Ljava/lang/String;

.field private static mZipFilePath:Ljava/lang/String;


# instance fields
.field private enableZipUpgradePkg:Z

.field private gearStatusReal:I

.field private mApaUpdate:Landroid/widget/Button;

.field private mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field private mApaVersionHeader:Ljava/lang/String;

.field private mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

.field private mBackDisPlayUpdate:Landroid/widget/Button;

.field private mBackDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field private mCancel:Landroid/widget/Button;

.field private mConfirm:Landroid/widget/Button;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContent:Landroid/widget/TextView;

.field private mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field private mDMCUpdate:Landroid/widget/Button;

.field private mDashBoardDisPlayUpdate:Landroid/widget/Button;

.field private mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field private mDevInfo:Landroid/widget/TextView;

.field private mDevText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisPlayUpdate:Landroid/widget/Button;

.field private mDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field private mDrivenSpeed:F

.field private mErrorText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHasOverlayPermission:Z

.field private mIsConnected:Z

.field private mIviDisPlayUpdate:Landroid/widget/Button;

.field private mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLayout1:Landroid/widget/LinearLayout;

.field private mMcuUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field private mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

.field private mPartNumber:Ljava/lang/String;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressPct:I

.field private mProgressUpdate:Lcom/mega/ota/test/IProgressUpdate;

.field private mReceiver:Lcom/mega/ota/test/UsbReceiver;

.field private mResume:Landroid/widget/Button;

.field private mSourceFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceVolume:Landroid/os/storage/StorageVolume;

.field private mStatus:I

.field private mStatusText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStopCopy:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTargetFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitile:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const-string v0, ""

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    .line 82
    const-string v1, "/data/ota_package"

    sput-object v1, Lcom/mega/ota/test/UpdateDialog;->mZipFilePath:Ljava/lang/String;

    .line 83
    const-string v1, "/ota/package"

    sput-object v1, Lcom/mega/ota/test/UpdateDialog;->mApaFilePath:Ljava/lang/String;

    .line 84
    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mDestCbfFilePath:Ljava/lang/String;

    .line 85
    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mDestRsaFilePath:Ljava/lang/String;

    .line 88
    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    .line 89
    const-string v1, "sys.update.package.enable.documenui"

    sput-object v1, Lcom/mega/ota/test/UpdateDialog;->SYS_UPDATE_PACKAGE_ENABLE_DOCUMENUI:Ljava/lang/String;

    .line 90
    const-string v1, "sys.update.package.enable.zip"

    sput-object v1, Lcom/mega/ota/test/UpdateDialog;->SYS_UPDATE_PACKAGE_ENABLE_ZIP:Ljava/lang/String;

    .line 100
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mega/ota/test/UpdateDialog;->mIsSignatureVerifySuccess:Z

    .line 101
    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mFailedReason:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mega/ota/test/UpdateDialog;->mIsSocUpgrade:Z

    .line 104
    sput-boolean v1, Lcom/mega/ota/test/UpdateDialog;->mIsApaUpgrade:Z

    .line 105
    sput-boolean v1, Lcom/mega/ota/test/UpdateDialog;->mApaCopySuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 98
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mega/ota/test/UpdateDialog;->enableZipUpgradePkg:Z

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceFileList:Ljava/util/ArrayList;

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mTargetFileList:Ljava/util/ArrayList;

    .line 110
    iput-boolean v1, p0, Lcom/mega/ota/test/UpdateDialog;->mHasOverlayPermission:Z

    .line 113
    new-instance v2, Lcom/mega/ota/test/UpdateDialog$1;

    invoke-direct {v2, p0}, Lcom/mega/ota/test/UpdateDialog$1;-><init>(Lcom/mega/ota/test/UpdateDialog;)V

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mConnection:Landroid/content/ServiceConnection;

    .line 128
    iput-boolean v1, p0, Lcom/mega/ota/test/UpdateDialog;->mIsConnected:Z

    .line 142
    const-string v2, ""

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mPartNumber:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 171
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 172
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 173
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 174
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 175
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 176
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 177
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mMcuUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 178
    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

    .line 179
    iput v1, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 184
    iput-boolean v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStopCopy:Z

    .line 185
    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mApaVersionHeader:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/mega/ota/test/UpdateDialog;Lcom/mega/ota/test/IProgressUpdate;)Lcom/mega/ota/test/IProgressUpdate;
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;
    .param p1, "x1"    # Lcom/mega/ota/test/IProgressUpdate;

    .line 78
    iput-object p1, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressUpdate:Lcom/mega/ota/test/IProgressUpdate;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mega/ota/test/UpdateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 78
    iget-boolean v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mega/ota/test/UpdateDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mega/ota/test/UpdateDialog;->handleCpApaFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mega/ota/test/UpdateDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;
    .param p1, "x1"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/mega/ota/test/UpdateDialog;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mega/ota/test/UpdateDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 78
    iget v0, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mega/ota/test/UpdateDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;
    .param p1, "x1"    # I

    .line 78
    iput p1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    return p1
.end method

.method static synthetic access$1202(Lcom/mega/ota/test/UpdateDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;
    .param p1, "x1"    # I

    .line 78
    iput p1, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mega/ota/test/UpdateDialog;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Z

    .line 78
    invoke-direct/range {p0 .. p8}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 78
    sput-boolean p0, Lcom/mega/ota/test/UpdateDialog;->mApaCopySuccess:Z

    return p0
.end method

.method static synthetic access$1502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 78
    sput-object p0, Lcom/mega/ota/test/UpdateDialog;->mFailedReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/mega/ota/test/UpdateDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 78
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 78
    sput-boolean p0, Lcom/mega/ota/test/UpdateDialog;->mIsSignatureVerifySuccess:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mega/ota/test/UpdateDialog;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 78
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 78
    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->initParseCbfFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/mega/ota/test/UpdateDialog;->mIsApaUpgrade:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mega/ota/test/UpdateDialog;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 78
    invoke-direct {p0, p1}, Lcom/mega/ota/test/UpdateDialog;->handleCpFile(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mega/ota/test/UpdateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 78
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->prepareCpApaFile()V

    return-void
.end method

.method static synthetic access$800(Lcom/mega/ota/test/UpdateDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 78
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mega/ota/test/UpdateDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 78
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mTargetFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addUpdateStatecodeAndTime(Lcom/mega/update/service/UpdateState;)V
    .locals 8
    .param p1, "updateState"    # Lcom/mega/update/service/UpdateState;

    .line 517
    const-string v0, "UpdateDialog"

    const-string v1, "addUpdateStatecodeAndTime start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getState()I

    move-result v1

    .line 519
    .local v1, "state":I
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getErrorCode()I

    move-result v2

    .line 520
    .local v2, "code":I
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getErrorDesc()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "errorDesc":Ljava/lang/String;
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->flushDevInfoText()V

    .line 523
    const-string v4, "addUpdateStatecodeAndTime end"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method private convertScreenTypeZip2SupplyNameZip(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 932
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 933
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip path = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UpdateDialog"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v4, 0x0

    .line 936
    .local v4, "zipNum":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getPartNumberKeyWord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mega/ota/test/UpdateDialog;->getSupplyNameByPartnumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "supplyName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    .line 938
    invoke-static/range {p1 .. p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->countNestedZipsByFile(Ljava/io/File;)I

    move-result v5

    move v4, v5

    .line 939
    if-ne v4, v6, :cond_0

    .line 940
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip  failed zipNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v3, 0x0

    return-object v3

    .line 945
    :cond_0
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 947
    .local v5, "zipis":Ljava/util/zip/ZipInputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, "zipOutPath":Ljava/lang/String;
    const-string v9, ""

    .line 949
    .local v9, "zipName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip zipOutPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " mPartNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mega/ota/test/UpdateDialog;->mPartNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " supplyName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v10

    move-object v11, v10

    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v10, :cond_6

    .line 951
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 952
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const/4 v10, 0x1

    if-ne v4, v10, :cond_5

    .line 953
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip find success zipName = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 955
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " isDirectory"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v0

    goto/16 :goto_2

    .line 957
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 958
    .local v10, "zipFilePathAndName":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 961
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 962
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 963
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip zipFilePathAndName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " zipFileAbsolutePath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 968
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    new-array v14, v14, [B

    .line 969
    .local v14, "buffer":[B
    :goto_1
    invoke-virtual {v5, v14}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v15

    move/from16 v16, v15

    .local v16, "len":I
    if-eq v15, v6, :cond_4

    .line 970
    const/4 v15, 0x0

    move/from16 v6, v16

    .end local v16    # "len":I
    .local v6, "len":I
    invoke-virtual {v13, v14, v15, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 971
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    const/4 v6, -0x1

    goto :goto_1

    .line 973
    .end local v6    # "len":I
    .restart local v16    # "len":I
    :cond_4
    move/from16 v6, v16

    .end local v16    # "len":I
    .restart local v6    # "len":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "supplyName":Ljava/lang/String;
    .local v16, "supplyName":Ljava/lang/String;
    const-string v0, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip file unzip "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " succeed."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 975
    .end local v6    # "len":I
    .end local v10    # "zipFilePathAndName":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "buffer":[B
    goto :goto_2

    .line 977
    .end local v16    # "supplyName":Ljava/lang/String;
    .restart local v0    # "supplyName":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "supplyName":Ljava/lang/String;
    .restart local v16    # "supplyName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mega_ota_2.0 convertScreenTypeZip2SupplyNameZip find failed zipName = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_2
    move-object/from16 v0, v16

    const/4 v6, -0x1

    goto/16 :goto_0

    .line 980
    .end local v16    # "supplyName":Ljava/lang/String;
    .restart local v0    # "supplyName":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    move-object/from16 v16, v0

    .end local v0    # "supplyName":Ljava/lang/String;
    .restart local v16    # "supplyName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 984
    .end local v5    # "zipis":Ljava/util/zip/ZipInputStream;
    .end local v7    # "zipOutPath":Ljava/lang/String;
    .end local v9    # "zipName":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v16    # "supplyName":Ljava/lang/String;
    nop

    .line 985
    return-object v2

    .line 981
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .line 982
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 983
    return-object v2
.end method

.method private execUpgrade(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1022
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I

    move-result v0

    .line 1023
    .local v0, "result":I
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    .line 1024
    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 1025
    const-string v1, " zipFileWithSupplyName = "

    const-string v3, "UpdateDialog"

    if-eqz v0, :cond_0

    .line 1026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mega_ota_2.0 upgrade pkg failed mZipFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v1, v2, v2}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->setOtaMode(II)Z

    .line 1028
    const/4 v1, 0x7

    iput v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1029
    iput v2, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 1030
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1032
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mega_ota_2.0 upgrade pkg success mZipFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v1, 0x5

    iput v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1034
    iput v2, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 1035
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1037
    :goto_0
    return-void
.end method

.method private exitFullScreen()V
    .locals 4

    .line 1010
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1011
    .local v0, "window":Landroid/view/Window;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    .line 1012
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1013
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1014
    .end local v1    # "decorView":Landroid/view/View;
    goto :goto_0

    .line 1015
    :cond_0
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1018
    :goto_0
    invoke-static {v2}, Lcom/mega/nexus/app/MegaNexusUtil;->disableSystemUIGesture(Z)V

    .line 1019
    return-void
.end method

.method private flushDevInfoText()V
    .locals 1

    .line 452
    new-instance v0, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$eP_g8pmXP-ATvuWqdIXQYO0L4L4;

    invoke-direct {v0, p0}, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$eP_g8pmXP-ATvuWqdIXQYO0L4L4;-><init>(Lcom/mega/ota/test/UpdateDialog;)V

    invoke-virtual {p0, v0}, Lcom/mega/ota/test/UpdateDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method private getSupplyNameByPartnumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partNumber"    # Ljava/lang/String;

    .line 892
    const-string v0, ""

    .line 893
    .local v0, "res":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    const-string v1, ""

    return-object v1

    .line 896
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "703002749AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "703002743AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "703000929AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "703000908AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "701000362AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "701000358AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "701000284AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_7
    const-string v2, "701000225AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_8
    const-string v2, "301003410AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "301001664AA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 925
    :pswitch_0
    const-string v0, "hiway"

    goto :goto_1

    .line 922
    :pswitch_1
    const-string v0, "desaysv"

    .line 923
    goto :goto_1

    .line 919
    :pswitch_2
    const-string v0, "hiway"

    .line 920
    goto :goto_1

    .line 916
    :pswitch_3
    const-string v0, "desaysv"

    .line 917
    goto :goto_1

    .line 913
    :pswitch_4
    const-string v0, "desaysv"

    .line 914
    goto :goto_1

    .line 910
    :pswitch_5
    const-string v0, "bitech"

    .line 911
    goto :goto_1

    .line 907
    :pswitch_6
    const-string v0, "desaysv"

    .line 908
    goto :goto_1

    .line 904
    :pswitch_7
    const-string v0, "hiway"

    .line 905
    goto :goto_1

    .line 901
    :pswitch_8
    const-string v0, "desaysv"

    .line 902
    goto :goto_1

    .line 898
    :pswitch_9
    const-string v0, "desaysv"

    .line 899
    nop

    .line 928
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7ea589 -> :sswitch_9
        -0x6833782c -> :sswitch_8
        -0x19dadee3 -> :sswitch_7
        -0x19d8286a -> :sswitch_6
        -0x19cb5f02 -> :sswitch_5
        -0x19cb0129 -> :sswitch_4
        0xf0fc62b -> :sswitch_3
        0xf10b2aa -> :sswitch_2
        0x125f071e -> :sswitch_1
        0x125f1da4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCpApaFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1518
    .local p1, "source":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "target":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$7Hcz9ln8ypFG5oCFHkS0bO-3mkk;

    invoke-direct {v1, p0, p1, p2}, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$7Hcz9ln8ypFG5oCFHkS0bO-3mkk;-><init>(Lcom/mega/ota/test/UpdateDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1544
    return-void
.end method

.method private handleCpFile(Landroid/net/Uri;)V
    .locals 2
    .param p1, "srcUri"    # Landroid/net/Uri;

    .line 1459
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$LY3s3dc6SXN250OXgkPt9uNzedY;

    invoke-direct {v1, p0, p1}, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$LY3s3dc6SXN250OXgkPt9uNzedY;-><init>(Lcom/mega/ota/test/UpdateDialog;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1496
    return-void
.end method

.method private static initParseCbfFile()Z
    .locals 9

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 initParseCbfFile mCbfFilePathAndName[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCbfFilePathAndName[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, ""

    if-nez v0, :cond_4

    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    .line 643
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v6, ".cbf"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v6, ".zip"

    if-eqz v0, :cond_1

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".rsa"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mZipFilePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v7, v5, v3

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    .line 646
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    .line 648
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    .line 649
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    .line 650
    const-string v0, " mega_ota_2.0 initParseCbfFile failed cbf\u6587\u4ef6\u540c\u7ea7\u76ee\u5f55\u4e0d\u5b58\u5728\u5bf9\u5e94\u7684rsa\u6587\u4ef6"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return v2

    .line 653
    :cond_0
    return v3

    .line 655
    :cond_1
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v0, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mega/ota/test/UpdateDialog;->mZipFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    .line 659
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    .line 660
    return v3

    .line 662
    :cond_2
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    .line 663
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    .line 664
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    .line 665
    const-string v3, " mega_ota_2.0 initParseCbfFile failed \u9009\u62e9\u7684zip\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return v2

    .line 669
    .end local v0    # "zipFile":Ljava/io/File;
    :cond_3
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    .line 670
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    .line 671
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    .line 672
    const-string v0, " mega_ota_2.0 initParseCbfFile failed \u9009\u62e9\u7684\u6587\u4ef6\u4e0d\u662fcbf\u6216zip\u683c\u5f0f"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v2

    .line 676
    :cond_4
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    .line 677
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    .line 678
    sput-object v4, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    .line 679
    const-string v0, " mega_ota_2.0 initParseCbfFile failed mCbfFilePathAndName[0] or mCbfFilePathAndName[1] is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return v2
.end method

.method private static isRedWoodVersion()Z
    .locals 2

    .line 1040
    const-string v0, "sys.update.package.regular"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "e0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    const/4 v1, 0x1

    return v1

    .line 1044
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private onConfirm(I)V
    .locals 12
    .param p1, "clickType"    # I

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 mStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clickType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget v0, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    const/4 v2, 0x6

    const-string v3, ".cbf"

    const-string v4, ".zip"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_8

    const/4 v7, 0x3

    if-eq v0, v7, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_9

    .line 1299
    :cond_0
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->finish()V

    goto/16 :goto_9

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-eqz v0, :cond_14

    .line 1243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1244
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1245
    .local v2, "isUserDebugVersion":Ljava/lang/String;
    const-string v7, "userdebug"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "force"

    if-eqz v7, :cond_2

    .line 1246
    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1248
    :cond_2
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1251
    :goto_0
    const-string v7, "isUSB"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mega_ota_2.0  mIsSocUpgrade = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/mega/ota/test/UpdateDialog;->mIsSocUpgrade:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mIsApaUpgrade = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/mega/ota/test/UpdateDialog;->mIsApaUpgrade:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mZipFileName = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mCbfFileName = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mDestCbfFilePath = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mDestCbfFilePath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    sget-boolean v1, Lcom/mega/ota/test/UpdateDialog;->mIsSocUpgrade:Z

    if-eqz v1, :cond_3

    .line 1277
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/mega/ota/test/UpdateDialog;->execUpgrade(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1278
    :cond_3
    sget-boolean v1, Lcom/mega/ota/test/UpdateDialog;->mIsApaUpgrade:Z

    if-eqz v1, :cond_4

    .line 1279
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mDestCbfFilePath:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/mega/ota/test/UpdateDialog;->execUpgrade(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1281
    :cond_4
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1282
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/mega/ota/test/UpdateDialog;->execUpgrade(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1285
    :cond_5
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1286
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/mega/ota/test/UpdateDialog;->convertScreenTypeZip2SupplyNameZip(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1287
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1288
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/mega/ota/test/UpdateDialog;->execUpgrade(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1290
    :cond_6
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1291
    .local v3, "message":Ljava/lang/String;
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1295
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "isUserDebugVersion":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    :cond_7
    :goto_1
    goto/16 :goto_9

    .line 1162
    :cond_8
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->SYS_UPDATE_PACKAGE_ENABLE_DOCUMENUI:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1163
    .local v0, "enableDocumenui":Z
    const/4 v7, 0x4

    if-eqz v0, :cond_9

    .line 1164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    const/16 v2, 0xe1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/mega/ota/test/UpdateDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    goto :goto_2

    .line 1169
    :catch_0
    move-exception v2

    .line 1170
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iput v7, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1171
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1173
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    goto/16 :goto_9

    .line 1174
    :cond_9
    if-ne p1, v2, :cond_a

    .line 1175
    sput-boolean v5, Lcom/mega/ota/test/UpdateDialog;->mIsApaUpgrade:Z

    goto :goto_3

    .line 1177
    :cond_a
    sput-boolean v6, Lcom/mega/ota/test/UpdateDialog;->mIsApaUpgrade:Z

    .line 1179
    :goto_3
    if-ne p1, v5, :cond_b

    .line 1180
    sput-boolean v5, Lcom/mega/ota/test/UpdateDialog;->mIsSocUpgrade:Z

    goto :goto_4

    .line 1182
    :cond_b
    sput-boolean v6, Lcom/mega/ota/test/UpdateDialog;->mIsSocUpgrade:Z

    .line 1185
    :goto_4
    sget-object v2, Lcom/mega/ota/test/UpdateDialog;->SYS_UPDATE_PACKAGE_ENABLE_ZIP:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mega/ota/test/UpdateDialog;->enableZipUpgradePkg:Z

    .line 1186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .local v2, "findUpgradeFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    iget-object v8, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceVolume:Landroid/os/storage/StorageVolume;

    if-eqz v8, :cond_e

    .line 1188
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1189
    .local v8, "uDiskRootPath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1190
    invoke-static {}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isCbfOnly()Z

    move-result v9

    const-string v10, "/eng.update"

    if-eqz v9, :cond_d

    .line 1191
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1192
    .local v9, "cbfFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1193
    iget-boolean v11, p0, Lcom/mega/ota/test/UpdateDialog;->enableZipUpgradePkg:Z

    if-eqz v11, :cond_c

    .line 1194
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v4}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1195
    .local v10, "zipFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1197
    .end local v9    # "cbfFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    .end local v10    # "zipFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    :cond_c
    goto :goto_5

    .line 1198
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1199
    .restart local v9    # "cbfFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v4}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1200
    .restart local v10    # "zipFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1201
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1206
    .end local v8    # "uDiskRootPath":Ljava/lang/String;
    .end local v9    # "cbfFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    .end local v10    # "zipFromUDisk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    :cond_e
    :goto_5
    invoke-static {}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isCbfOnly()Z

    move-result v8

    const-string v9, "/storage/emulated/0"

    if-eqz v8, :cond_10

    .line 1207
    invoke-virtual {p0, v9, v3}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1208
    .local v3, "cbfFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1209
    iget-boolean v8, p0, Lcom/mega/ota/test/UpdateDialog;->enableZipUpgradePkg:Z

    if-eqz v8, :cond_f

    .line 1210
    invoke-virtual {p0, v9, v4}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1211
    .local v4, "zipFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1213
    .end local v3    # "cbfFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    .end local v4    # "zipFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    :cond_f
    goto :goto_6

    .line 1214
    :cond_10
    invoke-virtual {p0, v9, v3}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1215
    .restart local v3    # "cbfFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-virtual {p0, v9, v4}, Lcom/mega/ota/test/UpdateDialog;->findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1216
    .restart local v4    # "zipFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1217
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1220
    .end local v3    # "cbfFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    .end local v4    # "zipFromSD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    :goto_6
    invoke-virtual {p0, p1}, Lcom/mega/ota/test/UpdateDialog;->getUpgradeTypeKeyWord(I)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .local v3, "upgradeTypeKeyWord":Ljava/lang/String;
    const-string v4, ""

    .line 1222
    .local v4, "keyWord":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1224
    invoke-virtual {p0, v2, v4}, Lcom/mega/ota/test/UpdateDialog;->filterByFileNameKeyword(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1226
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mega_ota_2.0 UpdateDialog onConfirm upgradeTypeKeyWord = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " partNumberKeyWord = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getPartNumberKeyWord()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " keyWord = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_12

    goto :goto_7

    .line 1233
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mega_ota_2.0 find upgrade pkg success pkg_num = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v7}, Lcom/mega/ota/test/cbfBean;->getmFilePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 1235
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v6}, Lcom/mega/ota/test/cbfBean;->getmFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 1236
    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->showListDialog(Ljava/util/ArrayList;)V

    goto :goto_8

    .line 1229
    :cond_13
    :goto_7
    iput v7, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1230
    iget-object v5, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f06002c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    const-string v5, " mega_ota_2.0 find upgrade pkg failed, \u672a\u627e\u5230cbf\u6216zip\u6587\u4ef6"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .end local v2    # "findUpgradeFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    .end local v3    # "upgradeTypeKeyWord":Ljava/lang/String;
    .end local v4    # "keyWord":Ljava/lang/String;
    :goto_8
    nop

    .line 1302
    .end local v0    # "enableDocumenui":Z
    :cond_14
    :goto_9
    return-void
.end method

.method private prepareCpApaFile()V
    .locals 4

    .line 1506
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1507
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceFileList:Ljava/util/ArrayList;

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceFileList:Ljava/util/ArrayList;

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mega/ota/test/UpdateDialog;->mApaFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->replaceFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mDestCbfFilePath:Ljava/lang/String;

    .line 1510
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mega/ota/test/UpdateDialog;->mApaFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->replaceFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mDestRsaFilePath:Ljava/lang/String;

    .line 1511
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mTargetFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1512
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mTargetFileList:Ljava/util/ArrayList;

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mDestCbfFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mTargetFileList:Ljava/util/ArrayList;

    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mDestRsaFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UpdateDialog prepareCpApaFile sourceFileList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " targetFileList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mTargetFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void
.end method

.method public static replaceFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originalPath"    # Ljava/lang/String;
    .param p1, "newDirectory"    # Ljava/lang/String;

    .line 1499
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 1500
    .local v1, "path":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    .local v2, "fileName":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v0

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 1502
    .local v0, "newPath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private reportEventLog(II)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "eventCode"    # I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"source\":1, \"EventType\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"EventCode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 464
    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "secureLog/logging"

    invoke-virtual {v2, v3, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 467
    return-void
.end method

.method private requestFullScreen()V
    .locals 3

    .line 989
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 990
    .local v0, "window":Landroid/view/Window;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 991
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 992
    .local v1, "decorView":Landroid/view/View;
    const/16 v2, 0x1707

    .line 999
    .local v2, "uiOptions":I
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1000
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "uiOptions":I
    goto :goto_0

    .line 1002
    :cond_0
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1006
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mega/nexus/app/MegaNexusUtil;->disableSystemUIGesture(Z)V

    .line 1007
    return-void
.end method

.method private requestOverlayPermission()V
    .locals 4

    .line 875
    const-string v0, "UpdateDialog"

    const-string v1, " mega_ota_2.0 UpdateDialog  requestOverlayPermission enter "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    .line 877
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    const-string v1, " mega_ota_2.0 UpdateDialog  requestOverlayPermission 111 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 880
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x666

    invoke-virtual {p0, v0, v1}, Lcom/mega/ota/test/UpdateDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 881
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 882
    :cond_0
    const-string v1, " mega_ota_2.0 UpdateDialog  requestOverlayPermission 222 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iput-boolean v2, p0, Lcom/mega/ota/test/UpdateDialog;->mHasOverlayPermission:Z

    goto :goto_0

    .line 886
    :cond_1
    const-string v1, " mega_ota_2.0 UpdateDialog  requestOverlayPermission 333 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iput-boolean v2, p0, Lcom/mega/ota/test/UpdateDialog;->mHasOverlayPermission:Z

    .line 889
    :goto_0
    return-void
.end method

.method private sendProgressToService(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 UpdateDialog  sendProgressToService progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressUpdate:Lcom/mega/ota/test/IProgressUpdate;

    if-eqz v0, :cond_0

    .line 856
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mega/ota/test/IProgressUpdate;->updateProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    goto :goto_0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 861
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private sendStatusToService(III)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "code"    # I
    .param p3, "status"    # I

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 UpdateDialog  sendAndStatusToService progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressUpdate:Lcom/mega/ota/test/IProgressUpdate;

    if-eqz v0, :cond_0

    .line 867
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/mega/ota/test/IProgressUpdate;->updateStatus(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 872
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "status"    # I
    .param p5, "progress"    # I
    .param p6, "confirm"    # Ljava/lang/String;
    .param p7, "cancel"    # Ljava/lang/String;
    .param p8, "startUpdate"    # Z

    .line 553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mTitile:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, ")"

    const-string v2, " ("

    if-eqz p3, :cond_1

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_1
    if-eqz p4, :cond_2

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tstatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    :goto_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 572
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 575
    :cond_5
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    :goto_1
    if-ltz p5, :cond_6

    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 578
    :cond_6
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mTitile:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mContent:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mProgress:Landroid/widget/ProgressBar;

    if-gez p5, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 581
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 582
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mResume:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    :cond_a
    const-string v0, "sys.update.package.regular"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "productName":Ljava/lang/String;
    const-string v3, "t1gc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 587
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 590
    :cond_b
    const-string v3, "t1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 591
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 593
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 594
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 595
    :cond_c
    const-string v3, "e0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "t2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "kirkwood"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 596
    :cond_d
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    :cond_e
    :goto_5
    if-eqz p8, :cond_f

    .line 602
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mDMCUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 603
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mResume:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 608
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->requestFullScreen()V

    goto/16 :goto_d

    .line 614
    :cond_f
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDMCUpdate:Landroid/widget/Button;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    move v4, v1

    goto :goto_6

    :cond_10
    move v4, v2

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 615
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    if-ne v4, v5, :cond_11

    move v4, v1

    goto :goto_7

    :cond_11
    move v4, v2

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 616
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdate:Landroid/widget/Button;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    if-ne v4, v5, :cond_12

    move v4, v1

    goto :goto_8

    :cond_12
    move v4, v2

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 617
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdate:Landroid/widget/Button;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    if-ne v4, v5, :cond_13

    move v4, v1

    goto :goto_9

    :cond_13
    move v4, v2

    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 618
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdate:Landroid/widget/Button;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    if-ne v4, v5, :cond_14

    move v4, v1

    goto :goto_a

    :cond_14
    move v4, v2

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 619
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    if-ne v4, v5, :cond_15

    move v4, v1

    goto :goto_b

    :cond_15
    move v4, v2

    :goto_b
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 620
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    if-ne v4, v5, :cond_16

    move v4, v1

    goto :goto_c

    :cond_16
    move v4, v2

    :goto_c
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->exitFullScreen()V

    .line 625
    :goto_d
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    return-void
.end method


# virtual methods
.method CpFile(Landroid/net/Uri;Ljava/lang/String;Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;)Lcom/mega/ota/test/cpNode;
    .locals 30
    .param p1, "srcUri"    # Landroid/net/Uri;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    .line 1339
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Lcom/mega/ota/test/cpNode;

    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v0, v5, v4}, Lcom/mega/ota/test/cpNode;-><init>(ILjava/lang/String;)V

    move-object v4, v0

    .line 1340
    .local v4, "mCpNode":Lcom/mega/ota/test/cpNode;
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->SYS_UPDATE_PACKAGE_ENABLE_DOCUMENUI:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1342
    .local v6, "enableDocumenui":Z
    const/4 v7, 0x4

    if-eqz v6, :cond_0

    .line 1343
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/mega/ota/test/UpdateDialog;->getFilePathAndNameByUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    .line 1344
    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->initParseCbfFile()Z

    .line 1346
    :cond_0
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v9, "UpdateDialog"

    if-nez v0, :cond_d

    :try_start_1
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    const-string v10, ".zip"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1347
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v0, "statFs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v10

    .line 1349
    .local v10, "availableSize":J
    new-instance v12, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v13, p2

    :try_start_2
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v12, "saveFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 1351
    :cond_1
    const-wide/16 v14, 0x0

    .line 1352
    .local v14, "fileSizeInBytes":J
    if-eqz v6, :cond_2

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "r"

    invoke-virtual {v5, v2, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v17

    move-wide/from16 v14, v17

    goto :goto_0

    .line 1355
    :cond_2
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v5, "zipFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1357
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v17

    move-wide/from16 v14, v17

    .line 1361
    .end local v5    # "zipFile":Ljava/io/File;
    :cond_3
    :goto_0
    const-wide/16 v17, 0x0

    cmp-long v5, v14, v17

    if-gtz v5, :cond_4

    .line 1362
    invoke-virtual {v4, v7}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f060026

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V

    .line 1364
    return-object v4

    .line 1367
    :cond_4
    const-wide/32 v19, 0x6400000

    add-long v19, v14, v19

    cmp-long v5, v19, v10

    if-lez v5, :cond_5

    .line 1368
    invoke-virtual {v4, v7}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1369
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f060009

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V

    .line 1370
    return-object v4

    .line 1372
    :cond_5
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1373
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 1374
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v12, v5, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1375
    invoke-virtual {v12, v5, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1378
    :cond_6
    const-string v5, " mega_ota_2.0 UpdateDialog CpFile enter zip upgrade  "

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1380
    .local v5, "os":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 1381
    .local v8, "temp":[B
    const/4 v9, 0x0

    .line 1382
    .local v9, "is":Ljava/io/InputStream;
    if-eqz v6, :cond_7

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    move-object/from16 v16, v0

    .end local v9    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    goto :goto_1

    .line 1385
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_7
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v16, v0

    .end local v0    # "statFs":Landroid/os/StatFs;
    .local v16, "statFs":Landroid/os/StatFs;
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1387
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :goto_1
    if-nez v7, :cond_8

    .line 1388
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f06002b

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V

    .line 1390
    return-object v4

    .line 1393
    :cond_8
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 1394
    .local v0, "ret":I
    const-wide/16 v20, 0x0

    .line 1395
    .local v20, "sum":J
    const-wide/16 v22, 0x0

    .line 1396
    .local v22, "report":J
    const-wide/16 v24, 0x0

    .line 1398
    .local v24, "lastReportTime":J
    :goto_2
    if-lez v0, :cond_c

    .line 1399
    iget-boolean v9, v1, Lcom/mega/ota/test/UpdateDialog;->mStopCopy:Z

    if-eqz v9, :cond_9

    .line 1400
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v2, 0x7f060032

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V

    .line 1402
    move-wide/from16 v28, v10

    goto :goto_4

    .line 1404
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v5, v8, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1405
    int-to-long v2, v0

    add-long v2, v20, v2

    .line 1406
    .end local v20    # "sum":J
    .local v2, "sum":J
    const-wide/16 v20, 0x64

    sub-long v26, v2, v22

    mul-long v26, v26, v20

    :try_start_3
    div-long v26, v26, v14

    cmp-long v9, v26, v17

    if-lez v9, :cond_b

    .line 1407
    move-wide/from16 v20, v2

    .line 1408
    .end local v22    # "report":J
    .local v20, "report":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1409
    .local v22, "currentTime":J
    sub-long v26, v22, v24

    const-wide/16 v28, 0x1f4

    cmp-long v9, v26, v28

    if-lez v9, :cond_a

    .line 1410
    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    move-wide/from16 v28, v10

    .end local v10    # "availableSize":J
    .local v28, "availableSize":J
    long-to-double v9, v2

    mul-double v9, v9, v26

    move-wide/from16 v26, v2

    .end local v2    # "sum":J
    .local v26, "sum":J
    long-to-double v2, v14

    div-double/2addr v9, v2

    double-to-int v2, v9

    move-object/from16 v3, p3

    :try_start_4
    invoke-interface {v3, v2}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpProgress(I)V

    .line 1411
    move-wide/from16 v9, v22

    move-wide/from16 v24, v9

    move-wide/from16 v22, v20

    .end local v24    # "lastReportTime":J
    .local v9, "lastReportTime":J
    goto :goto_3

    .line 1409
    .end local v9    # "lastReportTime":J
    .end local v26    # "sum":J
    .end local v28    # "availableSize":J
    .restart local v2    # "sum":J
    .restart local v10    # "availableSize":J
    .restart local v24    # "lastReportTime":J
    :cond_a
    move-wide/from16 v26, v2

    move-wide/from16 v28, v10

    move-object/from16 v3, p3

    .end local v2    # "sum":J
    .end local v10    # "availableSize":J
    .restart local v26    # "sum":J
    .restart local v28    # "availableSize":J
    move-wide/from16 v22, v20

    goto :goto_3

    .line 1406
    .end local v20    # "report":J
    .end local v26    # "sum":J
    .end local v28    # "availableSize":J
    .restart local v2    # "sum":J
    .restart local v10    # "availableSize":J
    .local v22, "report":J
    :cond_b
    move-wide/from16 v26, v2

    move-wide/from16 v28, v10

    move-object/from16 v3, p3

    .line 1414
    .end local v2    # "sum":J
    .end local v10    # "availableSize":J
    .restart local v26    # "sum":J
    .restart local v28    # "availableSize":J
    :goto_3
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v0, v2

    move-object/from16 v2, p1

    move-wide/from16 v20, v26

    move-wide/from16 v10, v28

    goto :goto_2

    .line 1449
    .end local v0    # "ret":I
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "temp":[B
    .end local v12    # "saveFile":Ljava/io/File;
    .end local v14    # "fileSizeInBytes":J
    .end local v16    # "statFs":Landroid/os/StatFs;
    .end local v22    # "report":J
    .end local v24    # "lastReportTime":J
    .end local v26    # "sum":J
    .end local v28    # "availableSize":J
    :catch_0
    move-exception v0

    move-object/from16 v3, p3

    goto/16 :goto_6

    .line 1398
    .restart local v0    # "ret":I
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "temp":[B
    .restart local v10    # "availableSize":J
    .restart local v12    # "saveFile":Ljava/io/File;
    .restart local v14    # "fileSizeInBytes":J
    .restart local v16    # "statFs":Landroid/os/StatFs;
    .local v20, "sum":J
    .restart local v22    # "report":J
    .restart local v24    # "lastReportTime":J
    :cond_c
    move-wide/from16 v28, v10

    .line 1416
    .end local v10    # "availableSize":J
    .restart local v28    # "availableSize":J
    :goto_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1417
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 1418
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1419
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1420
    .end local v0    # "ret":I
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "temp":[B
    .end local v12    # "saveFile":Ljava/io/File;
    .end local v14    # "fileSizeInBytes":J
    .end local v16    # "statFs":Landroid/os/StatFs;
    .end local v20    # "sum":J
    .end local v22    # "report":J
    .end local v24    # "lastReportTime":J
    .end local v28    # "availableSize":J
    goto/16 :goto_5

    .line 1346
    :cond_d
    move-object/from16 v13, p2

    .line 1420
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    const-string v2, ".cbf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1421
    const-string v0, " mega_ota_2.0 UpdateDialog CpFile enter cbf upgrade "

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_f

    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    const-string v5, ".rsa"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1423
    const-string v0, " mega_ota_2.0 UpdateDialog CpFile cbf\u6587\u4ef6\u540c\u7ea7\u76ee\u5f55\u5b58\u5728\u5bf9\u5e94\u7684rsa\u6587\u4ef6 "

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    new-instance v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;

    invoke-direct {v0, v3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;-><init>(Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;)V

    .line 1425
    .local v0, "mMegaOtaCbfUtil":Lcom/mega/update/sdk/MegaOtaCbfUtil;
    nop

    .line 1426
    sget-object v5, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mRsaFileName:Ljava/lang/String;

    sget-object v8, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v0, v5, v7, v8}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->parseCbfAndVerifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1427
    .local v5, "zipName":Ljava/lang/String;
    sget-boolean v7, Lcom/mega/ota/test/UpdateDialog;->mIsSignatureVerifySuccess:Z

    if-nez v7, :cond_e

    .line 1428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mega_ota_2.0 UpdateDialog CpFile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/mega/ota/test/UpdateDialog;->mFailedReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const/4 v7, 0x1

    invoke-direct {v1, v2, v7}, Lcom/mega/ota/test/UpdateDialog;->reportEventLog(II)V

    .line 1430
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mFailedReason:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V

    .line 1433
    .end local v5    # "zipName":Ljava/lang/String;
    :cond_e
    nop

    .line 1438
    .end local v0    # "mMegaOtaCbfUtil":Lcom/mega/update/sdk/MegaOtaCbfUtil;
    goto :goto_5

    .line 1439
    :cond_f
    const-string v0, " mega_ota_2.0 UpdateDialog CpFile cbf\u6587\u4ef6\u540c\u7ea7\u76ee\u5f55\u4e0d\u5b58\u5728\u5bf9\u5e94\u7684rsa\u6587\u4ef6 "

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v5, 0x4

    invoke-direct {v1, v2, v5}, Lcom/mega/ota/test/UpdateDialog;->reportEventLog(II)V

    .line 1441
    invoke-virtual {v4, v5}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V

    goto :goto_5

    .line 1445
    :cond_10
    const-string v0, " mega_ota_2.0 UpdateDialog CpFile \u9009\u62e9\u7684\u6587\u4ef6\u4e0d\u662fcbf\u6216zip\u6587\u4ef6 "

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1454
    :goto_5
    nop

    .line 1455
    return-object v4

    .line 1449
    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v13, p2

    .line 1450
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1451
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/mega/ota/test/cpNode;->setCode(I)V

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060034

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mega/ota/test/cpNode;->setMsg(Ljava/lang/String;)V

    .line 1453
    return-object v4
.end method

.method public attached(Landroid/os/storage/StorageVolume;)V
    .locals 2
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UpdateDialog attached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iput-object p1, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 754
    return-void
.end method

.method public detached()V
    .locals 2

    .line 758
    const-string v0, "mega_ota_2.0"

    const-string v1, " UpdateDialog detached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 760
    return-void
.end method

.method public filterByFileNameKeyword(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p2, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mega/ota/test/cbfBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mega/ota/test/cbfBean;",
            ">;"
        }
    .end annotation

    .line 834
    .local p1, "originalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v0, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    const-string v1, ""

    .line 837
    .local v1, "keyWordTemp":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DMC"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    const-string v3, "ICC"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/ota/test/cbfBean;

    .line 842
    .local v3, "bean":Lcom/mega/ota/test/cbfBean;
    invoke-virtual {v3}, Lcom/mega/ota/test/cbfBean;->getmFileName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 843
    invoke-virtual {v3}, Lcom/mega/ota/test/cbfBean;->getmFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/mega/ota/test/cbfBean;->getmFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/mega/ota/test/cbfBean;->getmFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 844
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .end local v3    # "bean":Lcom/mega/ota/test/cbfBean;
    :cond_3
    goto :goto_0

    .line 849
    :cond_4
    return-object v0
.end method

.method public findFileBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mega/ota/test/cbfBean;",
            ">;"
        }
    .end annotation

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 UpdateDialog findFileBySuffix enter rootPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " suffix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 768
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, " mega_ota_2.0 UpdateDialog findFileBySuffixrootPath = "

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 770
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 771
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    .line 772
    array-length v1, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, v3, v5

    .line 773
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 774
    new-instance v7, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8, v4}, Lcom/mega/ota/test/cbfBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 778
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  including no files "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v3    # "files":[Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 781
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .end local v2    # "directory":Ljava/io/File;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public getFilePathAndNameByUri(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 4
    .param p1, "usbFileUri"    # Landroid/net/Uri;

    .line 630
    const-string v0, ""

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "filePara":[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 632
    const/4 v1, 0x0

    const-string v3, "/storage/emulated/0"

    aput-object v3, v0, v1

    .line 633
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 636
    :cond_0
    return-object v0
.end method

.method public getPartNumberKeyWord()Ljava/lang/String;
    .locals 3

    .line 821
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_0

    .line 822
    const-string v0, ""

    return-object v0

    .line 824
    :cond_0
    invoke-interface {v0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v0

    .line 825
    .local v0, "deviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {v0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getPartNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mPartNumber:Ljava/lang/String;

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateDialog getPartNumberKeyWord deviceInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mega_ota_2.0"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .end local v0    # "deviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    :cond_1
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mPartNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeTypeKeyWord(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 796
    const-string v0, ""

    .line 797
    .local v0, "res":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 814
    :pswitch_0
    const-string v0, "APA"

    goto :goto_0

    .line 811
    :pswitch_1
    const-string v0, "DDIS"

    .line 812
    goto :goto_0

    .line 808
    :pswitch_2
    const-string v0, "RCCPDIS"

    .line 809
    goto :goto_0

    .line 805
    :pswitch_3
    const-string v0, "IHUDIS"

    .line 806
    goto :goto_0

    .line 802
    :pswitch_4
    const-string v0, "ICMDIS"

    .line 803
    goto :goto_0

    .line 799
    :pswitch_5
    const-string v0, "DMC"

    .line 800
    nop

    .line 817
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const v2, 0x7f060002

    const v3, 0x7f060001

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1316
    :pswitch_0
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060036

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget v9, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 1317
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1316
    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1318
    goto/16 :goto_0

    .line 1312
    :pswitch_1
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060037

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, -0x1

    .line 1313
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1312
    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1314
    goto/16 :goto_0

    .line 1309
    :pswitch_2
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget v8, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1310
    goto :goto_0

    .line 1324
    :pswitch_3
    iput v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1325
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1326
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 1325
    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1327
    goto :goto_0

    .line 1320
    :pswitch_4
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06000c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 1321
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 1320
    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1322
    goto :goto_0

    .line 1329
    :pswitch_5
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    .line 1330
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 1329
    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1331
    nop

    .line 1335
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$flushDevInfoText$0$UpdateDialog()V
    .locals 4

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 455
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 456
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mDevInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    return-void
.end method

.method public synthetic lambda$handleCpApaFile$2$UpdateDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "source"    # Ljava/util/ArrayList;
    .param p2, "target"    # Ljava/util/ArrayList;

    .line 1519
    new-instance v0, Lcom/mega/ota/test/UpdateDialog$6;

    invoke-direct {v0, p0}, Lcom/mega/ota/test/UpdateDialog$6;-><init>(Lcom/mega/ota/test/UpdateDialog;)V

    .line 1533
    .local v0, "listener":Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    invoke-static {p1, p2, v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->copyFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;)V

    .line 1534
    const-string v1, ""

    .line 1535
    .local v1, "tipMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/mega/ota/test/UpdateDialog;->mApaCopySuccess:Z

    if-eqz v2, :cond_0

    .line 1536
    const-string v1, "copy apa file success"

    .line 1537
    const/4 v2, 0x3

    iput v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    goto :goto_0

    .line 1539
    :cond_0
    const-string v1, "copy apa file failed"

    .line 1540
    const/4 v2, 0x4

    iput v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1542
    :goto_0
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1543
    return-void
.end method

.method public synthetic lambda$handleCpFile$1$UpdateDialog(Landroid/net/Uri;)V
    .locals 6
    .param p1, "srcUri"    # Landroid/net/Uri;

    .line 1460
    new-instance v0, Lcom/mega/ota/test/UpdateDialog$5;

    invoke-direct {v0, p0}, Lcom/mega/ota/test/UpdateDialog$5;-><init>(Lcom/mega/ota/test/UpdateDialog;)V

    .line 1475
    .local v0, "listener":Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStopCopy:Z

    .line 1476
    sget-object v1, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/mega/ota/test/UpdateDialog;->CpFile(Landroid/net/Uri;Ljava/lang/String;Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;)Lcom/mega/ota/test/cpNode;

    move-result-object v1

    .line 1477
    .local v1, "retCpNode":Lcom/mega/ota/test/cpNode;
    sget-object v2, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/mega/ota/test/UpdateDialog;->mCbfFileName:Ljava/lang/String;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1478
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mega/ota/test/UpdateDialog;->mIsSignatureVerifySuccess:Z

    .line 1480
    :cond_0
    const-string v2, ""

    .line 1481
    .local v2, "tipMsg":Ljava/lang/String;
    sget-boolean v3, Lcom/mega/ota/test/UpdateDialog;->mIsSignatureVerifySuccess:Z

    if-eqz v3, :cond_1

    .line 1482
    invoke-virtual {v1}, Lcom/mega/ota/test/cpNode;->getCode()I

    move-result v3

    iput v3, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1483
    invoke-virtual {v1}, Lcom/mega/ota/test/cpNode;->getMsg()Ljava/lang/String;

    move-result-object v2

    .line 1485
    :try_start_0
    const-string v3, "mega_ota_2.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UpdateDialog handleCpFile modify permission of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1487
    :catch_0
    move-exception v3

    .line 1488
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1489
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 1491
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1492
    invoke-virtual {v1}, Lcom/mega/ota/test/cpNode;->getMsg()Ljava/lang/String;

    move-result-object v2

    .line 1494
    :goto_1
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1495
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1548
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1549
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v2, 0xe1

    if-ne p1, v2, :cond_1

    .line 1550
    const-string v2, "UpdateDialog"

    const-string v3, "onActivityResult"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    if-eqz p3, :cond_0

    .line 1553
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1554
    .local v3, "fileUri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/mega/ota/test/UpdateDialog;->handleCpFile(Landroid/net/Uri;)V

    .line 1555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult fileUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v2, 0x2

    iput v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1557
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1558
    .end local v3    # "fileUri":Landroid/net/Uri;
    goto :goto_0

    .line 1559
    :cond_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1560
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1564
    :cond_1
    :goto_0
    if-ne p2, v1, :cond_3

    const/16 v1, 0x666

    if-ne p1, v1, :cond_3

    .line 1565
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/ota/test/UpdateDialog;->mHasOverlayPermission:Z

    goto :goto_1

    .line 1568
    :cond_2
    iput-boolean v0, p0, Lcom/mega/ota/test/UpdateDialog;->mHasOverlayPermission:Z

    .line 1571
    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 1049
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1050
    iput-boolean v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStopCopy:Z

    .line 1051
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aput-object v1, v0, v3

    .line 1052
    aput-object v1, v0, v2

    .line 1053
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->finish()V

    goto/16 :goto_1

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDMCUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f06000a

    const-wide/16 v5, 0x0

    const-string v7, "UpdateDialog"

    if-eqz v0, :cond_4

    .line 1055
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aput-object v1, v0, v3

    .line 1056
    aput-object v1, v0, v2

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " DMC onclick mIsConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mega/ota/test/UpdateDialog;->mIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-boolean v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIsConnected:Z

    if-nez v0, :cond_1

    .line 1059
    iput v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1060
    iput v3, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 1061
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1063
    :cond_1
    iget v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDrivenSpeed:F

    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/mega/ota/test/UpdateDialog;->gearStatusReal:I

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_3

    .line 1064
    :cond_2
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 1065
    invoke-direct {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->onConfirm(I)V

    goto/16 :goto_1

    .line 1067
    :cond_3
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1069
    const/4 v1, 0x2

    invoke-direct {p0, v1, v1}, Lcom/mega/ota/test/UpdateDialog;->reportEventLog(II)V

    .line 1070
    .end local v0    # "message":Ljava/lang/String;
    goto/16 :goto_1

    .line 1072
    :cond_4
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1073
    invoke-direct {p0, v3}, Lcom/mega/ota/test/UpdateDialog;->onConfirm(I)V

    goto/16 :goto_1

    .line 1077
    :cond_5
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1078
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 1079
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f060019

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "tmpEcuVersionHeader":Ljava/lang/String;
    const/4 v8, 0x5

    .local v8, "screenType":I
    goto :goto_0

    .line 1081
    .end local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    .end local v8    # "screenType":I
    :cond_6
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1082
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 1083
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f060013

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .restart local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    const/4 v8, 0x6

    .restart local v8    # "screenType":I
    goto :goto_0

    .line 1085
    .end local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    .end local v8    # "screenType":I
    :cond_7
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1086
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 1087
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f060018

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .restart local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    const/4 v8, 0x2

    .restart local v8    # "screenType":I
    goto :goto_0

    .line 1089
    .end local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    .end local v8    # "screenType":I
    :cond_8
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1090
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 1091
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f06001e

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .restart local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    const/4 v8, 0x3

    .restart local v8    # "screenType":I
    goto :goto_0

    .line 1093
    .end local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    .end local v8    # "screenType":I
    :cond_9
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1094
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 1095
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f060014

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1096
    .restart local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    const/4 v8, 0x4

    .line 1119
    .restart local v8    # "screenType":I
    :goto_0
    iget-object v9, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v9}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v9

    .line 1120
    .local v9, "deviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    if-eqz v9, :cond_a

    .line 1121
    iget-object v10, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-virtual {v9}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getPartNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mega/ota/test/UpdateDialog;->mPartNumber:Ljava/lang/String;

    .line 1123
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceInfo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->flushDevInfoText()V

    .line 1126
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mega_ota_2.0 mZipFileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/mega/ota/test/UpdateDialog;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    sget-object v7, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    aput-object v1, v7, v3

    .line 1129
    aput-object v1, v7, v2

    .line 1130
    iget v1, p0, Lcom/mega/ota/test/UpdateDialog;->mDrivenSpeed:F

    float-to-double v10, v1

    cmpg-double v1, v10, v5

    if-gtz v1, :cond_c

    iget v1, p0, Lcom/mega/ota/test/UpdateDialog;->gearStatusReal:I

    if-eqz v1, :cond_b

    if-ne v1, v2, :cond_c

    .line 1131
    :cond_b
    invoke-direct {p0, v8}, Lcom/mega/ota/test/UpdateDialog;->onConfirm(I)V

    goto :goto_1

    .line 1133
    :cond_c
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1137
    .end local v0    # "tmpEcuVersionHeader":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v8    # "screenType":I
    .end local v9    # "deviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    :goto_1
    return-void

    .line 1097
    :cond_d
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mResume:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1098
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 1100
    invoke-interface {v0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->triggerResume()I

    move-result v0

    .line 1101
    .local v0, "result":I
    if-eqz v0, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerResume return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v1, v3, v3}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->setOtaMode(II)Z

    .line 1104
    const/4 v1, 0x7

    iput v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1105
    iput v3, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 1106
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1107
    return-void

    .line 1109
    :cond_e
    const-string v1, "Resume started "

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v1, 0x5

    iput v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 1111
    iput v3, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 1112
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1113
    return-void

    .line 1115
    .end local v0    # "result":I
    :cond_f
    const-string v0, "Unsupported click"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 290
    const-string v0, "UpdateDialog"

    const-string v1, "onCreate +++ "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/mega/ota/test/UpdateDialog;->setContentView(I)V

    .line 293
    new-instance v1, Lcom/mega/ota/test/UsbReceiver;

    invoke-direct {v1, p0, p0}, Lcom/mega/ota/test/UsbReceiver;-><init>(Landroid/content/Context;Lcom/mega/ota/test/IUsbListener;)V

    iput-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mReceiver:Lcom/mega/ota/test/UsbReceiver;

    .line 294
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mReceiver:Lcom/mega/ota/test/UsbReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mega/ota/test/UpdateDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mReceiver:Lcom/mega/ota/test/UsbReceiver;

    invoke-virtual {v2}, Lcom/mega/ota/test/UsbReceiver;->findPluginVolume()V

    .line 323
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mTitile:Landroid/widget/TextView;

    .line 324
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDevInfo:Landroid/widget/TextView;

    .line 325
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mContent:Landroid/widget/TextView;

    .line 326
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 327
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mLayout:Landroid/widget/LinearLayout;

    .line 328
    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mLayout1:Landroid/widget/LinearLayout;

    .line 329
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mCancel:Landroid/widget/Button;

    .line 330
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mConfirm:Landroid/widget/Button;

    .line 331
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mResume:Landroid/widget/Button;

    .line 332
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDMCUpdate:Landroid/widget/Button;

    .line 333
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    .line 334
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdate:Landroid/widget/Button;

    .line 335
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdate:Landroid/widget/Button;

    .line 336
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdate:Landroid/widget/Button;

    .line 337
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    .line 340
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mResume:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDMCUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDMCUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 345
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const/4 v2, 0x0

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 351
    invoke-virtual {p0, v2}, Lcom/mega/ota/test/UpdateDialog;->setFinishOnTouchOutside(Z)V

    .line 352
    const-string v2, "Updater initilalizing  "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainDmcUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainDmcAssistor(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaAssistInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_2

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainDisplayUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_3

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    const-string v2, "Dashboard"

    invoke-virtual {v0, p0, v2}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainDisplayUpdater(Landroid/content/Context;Ljava/lang/String;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_4

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    const-string v2, "Ivi"

    invoke-virtual {v0, p0, v2}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainDisplayUpdater(Landroid/content/Context;Ljava/lang/String;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_5

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    const-string v2, "back"

    invoke-virtual {v0, p0, v2}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainDisplayUpdater(Landroid/content/Context;Ljava/lang/String;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_6

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainApaUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 360
    :cond_6
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mMcuUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    if-nez v0, :cond_7

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainMcuUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mMcuUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    .line 362
    :cond_7
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    .line 363
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaAssistInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;)Z

    .line 365
    invoke-static {}, Lcom/mega/update/sdk/utils/OtaConnector;->self()Lcom/mega/update/sdk/utils/OtaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    .line 367
    const-string v0, "sys.update.package.regular"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "productName":Ljava/lang/String;
    const-string v2, "t1gc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 369
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    .line 370
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    goto :goto_0

    .line 371
    :cond_8
    const-string v2, "t1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 372
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    goto :goto_0

    .line 373
    :cond_9
    const-string v2, "e0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "t2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "kirkwood"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 374
    :cond_a
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    .line 375
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    .line 376
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    .line 378
    :cond_b
    :goto_0
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    .line 379
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    .line 381
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    .line 382
    const-string v4, "SUCCESS "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ERROR "

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "NOT_READY "

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ACTION_RUNNING "

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "FILESYSTEM_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "SIGNATURE_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EXTRACT_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "VERSION_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "HASH_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "TIMEOUT_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v7, 0x1f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "UPDATE_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ACTIVATE_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v7, 0x21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ROLLBACK_ERROR "

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v7, 0x33

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FILE_NOT_FOUND "

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v8, 0x34

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "ACTION_ERROR "

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "NOT_ENOUGH_SPACE "

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v9, 0x3d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "DOWNLOAD_ERRPR "

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v10, 0x46

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "INVALID_PARAM "

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mErrorText:Ljava/util/Map;

    const/16 v10, 0x47

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "UNKNOWN_ERROR "

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    .line 403
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "UNKNOWN "

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const-string v10, "IDLE "

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOADING "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOAD_FAIL "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOAD_SUC "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLASHING "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLASH_FAIL "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLASH_SUC "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACTIVATING "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACT_REBOOTING "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACTIVATE_FAIL "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACTIVATE_SUC "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACTIVATE_FATAL "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ROLLBACKING "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "RBK_REBOOTING "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ROLLBACK_FAIL "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ROLLBACK_SUC "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ROLLBACK_FATAL "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CLEANING "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CLEANUP_FAIL "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mStatusText:Ljava/util/Map;

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CLEANUP_SUC "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v2}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v2

    .line 426
    .local v2, "deviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    if-eqz v2, :cond_d

    .line 427
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getHwVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mMcuUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v3}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v3

    .line 433
    .local v3, "mcuDeviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    if-eqz v3, :cond_c

    .line 434
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getBootVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_c
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->flushDevInfoText()V

    .line 442
    .end local v3    # "mcuDeviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    :cond_d
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    .line 444
    iget-object v3, p0, Lcom/mega/ota/test/UpdateDialog;->mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

    invoke-interface {v3}, Lcom/mega/update/sdk/MegaOtaAssistInterface;->requestVehicleInfo()Z

    .line 449
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 528
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 536
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mega/update/sdk/MegaOtaAssistInterface;->onFinish(Landroid/os/Bundle;)V

    .line 537
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V

    .line 538
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mAssistor:Lcom/mega/update/sdk/MegaOtaAssistInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaAssistInterface;->unregisterCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;)V

    .line 539
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V

    .line 540
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDashBoardDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V

    .line 541
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mIviDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V

    .line 542
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mBackDisPlayUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V

    .line 543
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v0, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V

    .line 545
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mReceiver:Lcom/mega/ota/test/UsbReceiver;

    invoke-virtual {p0, v0}, Lcom/mega/ota/test/UpdateDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 550
    :cond_0
    return-void
.end method

.method public onItemClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 686
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->mCbfFilePathAndName:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 687
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 688
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f03000a

    if-ne v0, v2, :cond_1

    .line 1143
    iget-boolean v0, p0, Lcom/mega/ota/test/UpdateDialog;->enableZipUpgradePkg:Z

    if-eqz v0, :cond_0

    .line 1144
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->SYS_UPDATE_PACKAGE_ENABLE_ZIP:Ljava/lang/String;

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v0, "close zip upgrade icc"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1146
    return v1

    .line 1148
    :cond_0
    sget-object v0, Lcom/mega/ota/test/UpdateDialog;->SYS_UPDATE_PACKAGE_ENABLE_ZIP:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v0, "open zip upgrade icc"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1150
    const/4 v0, 0x1

    return v0

    .line 1153
    :cond_1
    return v1
.end method

.method protected onStart()V
    .locals 14

    .line 471
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 473
    const-string v0, "UpdateDialog"

    const-string v1, " onStart() enter "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mApaVersionHeader:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mApaUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v1, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->setEcuVersionCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;)Z

    .line 477
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 478
    new-instance v2, Lcom/mega/ota/test/UpdateDialog$2;

    invoke-direct {v2, p0}, Lcom/mega/ota/test/UpdateDialog$2;-><init>(Lcom/mega/ota/test/UpdateDialog;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 493
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v1}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->isConnect()Z

    move-result v1

    const v2, 0x7f060001

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 494
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v1}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v1

    .line 495
    .local v1, "updateState":Lcom/mega/update/service/UpdateState;
    invoke-direct {p0, v1}, Lcom/mega/ota/test/UpdateDialog;->addUpdateStatecodeAndTime(Lcom/mega/update/service/UpdateState;)V

    .line 496
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mega/update/service/UpdateState;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    const-string v2, "Updater is running  "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v0, 0x5

    iput v0, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 499
    invoke-virtual {v1}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 500
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%d%%"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 502
    :cond_0
    const-string v5, "Updater is Not running  "

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iput v3, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 504
    iput v4, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 505
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mega/update/service/UpdateState;->getErrorCode()I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_1
    move v8, v4

    .line 506
    .local v8, "errorCode":I
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mega/update/service/UpdateState;->getState()I

    move-result v4

    :cond_2
    move v9, v4

    .line 507
    .local v9, "stateCode":I
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 509
    .end local v1    # "updateState":Lcom/mega/update/service/UpdateState;
    .end local v8    # "errorCode":I
    .end local v9    # "stateCode":I
    :goto_1
    goto :goto_2

    .line 510
    :cond_3
    iput v3, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 511
    iput v4, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 512
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/mega/ota/test/UpdateDialog;->updateViews(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 514
    :goto_2
    return-void
.end method

.method public otaApaVersion(Lcom/mega/update/sdk/utils/OtaDeviceInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " otaApaVersion OtaDeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mApaVersionHeader:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getHwVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->flushDevInfoText()V

    .line 192
    return-void
.end method

.method public otaAssistCanTp([BZ)V
    .locals 2
    .param p1, "resp"    # [B
    .param p2, "status"    # Z

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaAssistCanTp status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public otaAssistECallStatus(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "l"    # J

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaAssistECallStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public otaAssistRunning2HalfHour()V
    .locals 3

    .line 257
    const-string v0, "UpdateDialog"

    const-string v1, "otaAssistRunning2HalfHour"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->flushDevInfoText()V

    .line 260
    return-void
.end method

.method public otaAssistSC([BZ)V
    .locals 2
    .param p1, "sc"    # [B
    .param p2, "status"    # Z

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaAssistSC status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public otaAssistSK([BZ)V
    .locals 2
    .param p1, "sk"    # [B
    .param p2, "status"    # Z

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaAssistSK status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public otaAssistVehicleInfo(Lcom/mega/update/sdk/utils/OtaVehicleInfo;)V
    .locals 3
    .param p1, "otaVehicleInfo"    # Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaAssistVehicleInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->getQnxVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->getVinNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->getHandbrakStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->getScheduledChargeMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDevText:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->getScheduledTravel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->getDrivenSpeed()F

    move-result v0

    iput v0, p0, Lcom/mega/ota/test/UpdateDialog;->mDrivenSpeed:F

    .line 251
    invoke-virtual {p1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->getGearStatus()I

    move-result v0

    iput v0, p0, Lcom/mega/ota/test/UpdateDialog;->gearStatusReal:I

    .line 252
    invoke-direct {p0}, Lcom/mega/ota/test/UpdateDialog;->flushDevInfoText()V

    .line 253
    return-void
.end method

.method public otaPowerStatusChange(I)V
    .locals 2
    .param p1, "status"    # I

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaPowerStatusChange status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public otaUpdateProgress(Ljava/lang/String;II)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "childid"    # I
    .param p3, "totalProgress"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "childid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput p3, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    .line 198
    const/4 v0, 0x5

    iput v0, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 199
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%d%%"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method

.method public otaUpdateStatus(Ljava/lang/String;III)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "childid"    # I
    .param p3, "code"    # I
    .param p4, "status"    # I

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaUpdateStatus name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", update code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x1

    const-string v2, "%d%%"

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 207
    const/4 v1, 0x7

    iput v1, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 208
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/mega/ota/test/UpdateDialog;->reportEventLog(II)V

    .line 211
    return-void

    .line 213
    :cond_0
    const/16 v4, 0x18

    const/4 v5, 0x6

    if-ne p4, v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v4, v3, v3}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->setOtaMode(II)Z

    .line 215
    iput v5, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 216
    const-string v4, "Received ACTIVATE_SUC"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void

    .line 221
    :cond_1
    const-string v4, "display"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0xc

    if-eqz v4, :cond_2

    if-ne p4, v6, :cond_2

    .line 222
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v4, v3, v3}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->setOtaMode(II)Z

    .line 223
    iput v5, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 224
    const-string v4, "Update  Display succeed"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void

    .line 229
    :cond_2
    const-string v4, "apa"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne p4, v6, :cond_3

    .line 230
    iget-object v4, p0, Lcom/mega/ota/test/UpdateDialog;->mCurrentUpdater:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    invoke-interface {v4, v3, v3}, Lcom/mega/update/sdk/MegaOtaUpdateInterface;->setOtaMode(II)Z

    .line 231
    iput v5, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    .line 232
    const-string v4, "Update  APA succeed"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog;->mUiHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/mega/ota/test/UpdateDialog;->mStatus:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/mega/ota/test/UpdateDialog;->mProgressPct:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    return-void

    .line 237
    :cond_3
    const-string v0, "Not matched callback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public showListDialog(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mega/ota/test/cbfBean;",
            ">;)V"
        }
    .end annotation

    .line 692
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 693
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 696
    new-instance v1, Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-direct {v1, p0, p1}, Lcom/mega/ota/test/CustomDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 697
    .local v1, "adapter":Lcom/mega/ota/test/CustomDialogAdapter;
    invoke-virtual {v1, p0}, Lcom/mega/ota/test/CustomDialogAdapter;->setOnItemUpdateListener(Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;)V

    .line 698
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 699
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 702
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mega/ota/test/UpdateDialog$3;

    invoke-direct {v4, p0}, Lcom/mega/ota/test/UpdateDialog$3;-><init>(Lcom/mega/ota/test/UpdateDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 729
    invoke-virtual {p0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mega/ota/test/UpdateDialog$4;

    invoke-direct {v4, p0}, Lcom/mega/ota/test/UpdateDialog$4;-><init>(Lcom/mega/ota/test/UpdateDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 746
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 747
    .local v3, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 748
    return-void
.end method
