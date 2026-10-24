.class public Lcom/mega/ota/test/FloatingProgressService;
.super Landroid/app/Service;
.source "FloatingProgressService.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mega_ota_2.0"


# instance fields
.field private final mBinder:Lcom/mega/ota/test/IProgressUpdate$Stub;

.field private mBtnOk:Landroid/widget/Button;

.field private mFloatingView:Landroid/view/View;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/mega/ota/test/FloatingProgressService$1;

    invoke-direct {v0, p0}, Lcom/mega/ota/test/FloatingProgressService$1;-><init>(Lcom/mega/ota/test/FloatingProgressService;)V

    iput-object v0, p0, Lcom/mega/ota/test/FloatingProgressService;->mBinder:Lcom/mega/ota/test/IProgressUpdate$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/mega/ota/test/FloatingProgressService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/FloatingProgressService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/mega/ota/test/FloatingProgressService;->updateProgressBarUI(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/mega/ota/test/FloatingProgressService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/FloatingProgressService;

    .line 20
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->removeFloatingWindow()V

    return-void
.end method

.method private addFloatingWindow()V
    .locals 4

    .line 136
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService addFloatingWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 139
    .local v0, "transparentColor":I
    iget-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 141
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/mega/ota/test/FloatingProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    iget-object v3, p0, Lcom/mega/ota/test/FloatingProgressService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .end local v0    # "transparentColor":I
    :cond_0
    return-void
.end method

.method private initFloatingWindow()V
    .locals 10

    .line 101
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService initFloatingWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/mega/ota/test/FloatingProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 104
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    .line 106
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 107
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->requestFullScreen()V

    .line 110
    iget-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, "mTvTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    const v3, 0x7f03000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mTvContent:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    const v3, 0x7f03000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mProgressBar:Landroid/widget/ProgressBar;

    .line 113
    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mBtnOk:Landroid/widget/Button;

    .line 114
    new-instance v3, Lcom/mega/ota/test/FloatingProgressService$2;

    invoke-direct {v3, p0}, Lcom/mega/ota/test/FloatingProgressService$2;-><init>(Lcom/mega/ota/test/FloatingProgressService;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7fb

    const/16 v8, 0x128

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 131
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 132
    return-void
.end method

.method private removeFloatingWindow()V
    .locals 2

    .line 148
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService removeFloatingWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/mega/ota/test/FloatingProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 152
    :cond_0
    return-void
.end method

.method private requestFullScreen()V
    .locals 2

    .line 161
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService requestFullScreen "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 163
    const/16 v0, 0x1706

    .line 169
    .local v0, "uiOptions":I
    iget-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mFloatingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 171
    .end local v0    # "uiOptions":I
    :cond_0
    return-void
.end method

.method private updateProgressBarUI(III)V
    .locals 6
    .param p1, "progress"    # I
    .param p2, "code"    # I
    .param p3, "status"    # I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 FloatingProgressService updateProgressBarUI progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-gt p1, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "msg":Ljava/lang/String;
    const-string v2, ")"

    const/16 v3, -0x3e9

    if-eq p2, v3, :cond_0

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "code:ERROR("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_0
    if-eq p3, v3, :cond_1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "status:FLAS_FAIL("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/mega/ota/test/FloatingProgressService;->mBtnOk:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->removeFloatingWindow()V

    .line 93
    iget-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/mega/ota/test/FloatingProgressService;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService onBind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->addFloatingWindow()V

    .line 65
    iget-object v0, p0, Lcom/mega/ota/test/FloatingProgressService;->mBinder:Lcom/mega/ota/test/IProgressUpdate$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->initFloatingWindow()V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 70
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->removeFloatingWindow()V

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 56
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService onStartCommand "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->addFloatingWindow()V

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "index"    # I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 FloatingProgressService  onSystemUiVisibilityChange  index =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/mega/ota/test/FloatingProgressService;->requestFullScreen()V

    .line 158
    return-void
.end method
