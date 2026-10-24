.class public Lcom/mega/engineeringmode/function/display/DisplayActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final synthetic v:I


# instance fields
.field public i:Lcom/mega/engineeringmode/function/display/AudioFragment;

.field public j:Lcom/mega/engineeringmode/function/display/VideoFragment;

.field public k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

.field public l:Z

.field public m:Landroid/media/AudioManager;

.field public n:Landroid/media/AudioFocusRequest;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/view/View;

.field public q:Ljava/io/File;

.field public r:Ljava/io/File;

.field public s:Lcom/mega/engineeringmode/ui/MegaSwitch;

.field public final t:Ls0/b;

.field public final u:Lcom/mega/engineeringmode/function/display/DisplayActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    new-instance v0, Ls0/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->t:Ls0/b;

    new-instance v0, Lcom/mega/engineeringmode/function/display/DisplayActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/display/DisplayActivity$a;-><init>(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->u:Lcom/mega/engineeringmode/function/display/DisplayActivity$a;

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->m(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DisplayActivity"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "volumePath is null,usb connect lost, return!"

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ln1/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ivi.png"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->q:Ljava/io/File;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v4, "ipk.png"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v3, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->r:Ljava/io/File;

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const-string p0, "do not find ivi.png, return!"

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final n(I)V
    .locals 3

    const-string/jumbo v0, "playAudio "

    const-string v1, " isUsbMode  "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->m:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->n:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->i:Lcom/mega/engineeringmode/function/display/AudioFragment;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/AudioFragment;->q(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mega/engineeringmode/function/display/AudioActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "audio_pos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "requestAudioFocus fail"

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1202a2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o(I)V
    .locals 8

    const-string/jumbo v0, "playVideo "

    const-string v1, "DisplayActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->j:Lcom/mega/engineeringmode/function/display/VideoFragment;

    if-eqz p0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/a;->c(I)Ln1/e;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Ln1/e;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    iget-boolean v0, v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    if-eqz v0, :cond_4

    new-instance v0, Ln1/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ln1/l$a;

    invoke-direct {v3, v0}, Ln1/l$a;-><init>(Ln1/l;)V

    iput-object v2, v0, Ln1/l;->a:Landroid/content/Context;

    new-instance v4, Landroid/widget/MediaController;

    invoke-direct {v4, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Ln1/l;->b:Landroid/app/AlertDialog$Builder;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d00db

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v5, v0, Ln1/l;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v5, v0, Ln1/l;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v0, Ln1/l;->c:Landroid/app/AlertDialog;

    const v5, 0x7f0a02df

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/VideoView;

    iput-object v5, v0, Ln1/l;->d:Landroid/widget/VideoView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {v5, v4}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    const v4, 0x7f0a044c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ln1/l;->f:Landroid/widget/TextView;

    const v4, 0x7f0a044f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Ln1/l;->g:Landroid/widget/Button;

    const v4, 0x7f0a044d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Ln1/l;->h:Landroid/widget/Button;

    const v4, 0x7f0a044e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Ln1/l;->i:Landroid/widget/Button;

    iget-object v1, v0, Ln1/l;->g:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Ln1/l;->h:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Ln1/l;->i:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->c:Ln1/l;

    const-string p0, "UsbVedioDialog"

    if-nez v2, :cond_1

    const-string p1, "Conetxt err"

    invoke-static {p0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Ln1/l;->d:Landroid/widget/VideoView;

    if-nez v1, :cond_2

    const-string p1, "VedioView err"

    invoke-static {p0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Ln1/l;->c:Landroid/app/AlertDialog;

    if-nez v1, :cond_3

    const-string p1, "VedioDialog err"

    invoke-static {p0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ln1/h;

    invoke-direct {p0, v0}, Ln1/h;-><init>(Ln1/l;)V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v0, Ln1/l;->c:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0, p1}, Ln1/l;->a(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/mega/engineeringmode/function/display/VideoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "vedio_pos"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    iget-boolean v1, p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    :cond_5
    const-string/jumbo p1, "usbMode"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    :goto_0
    const-string/jumbo p0, "playAudio path err"

    invoke-static {v1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 0

    const-string p0, "DisplayActivity"

    const-string/jumbo p1, "onAudioFocusChange"

    invoke-static {p0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002c

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->b(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "usbMode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mIsUsbMode "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DisplayActivity"

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    if-eqz v2, :cond_1

    const v2, 0x7f1201e2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f1201d0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    invoke-virtual {p1}, Li2/a;->d()Z

    move-result p1

    const-string v2, "initView  getUsbState "

    invoke-static {v2, p1, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance p1, Lcom/mega/engineeringmode/function/display/AudioFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/display/AudioFragment;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->i:Lcom/mega/engineeringmode/function/display/AudioFragment;

    new-instance p1, Lcom/mega/engineeringmode/function/display/VideoFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/display/VideoFragment;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->j:Lcom/mega/engineeringmode/function/display/VideoFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->i:Lcom/mega/engineeringmode/function/display/AudioFragment;

    const v3, 0x7f0a0274

    invoke-virtual {p1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->j:Lcom/mega/engineeringmode/function/display/VideoFragment;

    invoke-virtual {p1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->j:Lcom/mega/engineeringmode/function/display/VideoFragment;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->i:Lcom/mega/engineeringmode/function/display/AudioFragment;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    const p1, 0x7f0a0273

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->p:Landroid/view/View;

    const p1, 0x7f0a01ee

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->o:Landroid/widget/ImageView;

    new-instance v3, Lw0/d;

    invoke-direct {v3, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0395

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    new-instance v1, Lx0/b;

    const/4 v3, 0x7

    invoke-direct {v1, v3, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Ln1/b;

    invoke-direct {v1, p0}, Ln1/b;-><init>(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lg1/l;

    invoke-direct {v1, v2, p0}, Lg1/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->u:Lcom/mega/engineeringmode/function/display/DisplayActivity$a;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->m:Landroid/media/AudioManager;

    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->n:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "DisplayActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    iget-object v0, v0, Li2/a;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->u:Lcom/mega/engineeringmode/function/display/DisplayActivity$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string p0, "DisplayActivity"

    const-string/jumbo v0, "onStop"

    invoke-static {p0, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final p(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFullScreenImg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->show()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->o:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->p:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    return-void
.end method
