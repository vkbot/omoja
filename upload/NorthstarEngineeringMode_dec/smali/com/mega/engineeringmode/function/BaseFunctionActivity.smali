.class public Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/mega/engineeringmode/ui/viewmodel/MainViewModel;

.field public c:Ljava/lang/String;

.field public d:Lcom/mega/engineeringmode/utils/TextClock;

.field public e:Lcom/mega/engineeringmode/function/BaseFunctionActivity$b;

.field public f:Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;

.field public g:Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static f(Lcom/mega/engineeringmode/function/BaseFunctionActivity;)V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public h()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/utils/TextClock;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->d:Lcom/mega/engineeringmode/utils/TextClock;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;

    invoke-direct {v1, p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;)V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->f:Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->l()V

    new-instance v0, Lcom/mega/engineeringmode/function/BaseFunctionActivity$b;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity$b;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->e:Lcom/mega/engineeringmode/function/BaseFunctionActivity$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.mega.settings.date_format"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->e:Lcom/mega/engineeringmode/function/BaseFunctionActivity$b;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mega/engineeringmode/function/BaseFunctionActivity$c;

    invoke-direct {v1, p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity$c;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->g:Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->g:Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public j()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/mega/engineeringmode/ui/viewmodel/MainViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/ui/viewmodel/MainViewModel;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->b:Lcom/mega/engineeringmode/ui/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/mega/engineeringmode/ui/viewmodel/MainViewModel;->a()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->b:Lcom/mega/engineeringmode/ui/viewmodel/MainViewModel;

    iget-object v0, v0, Lcom/mega/engineeringmode/ui/viewmodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lg1/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lg1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    const-string v0, "/storage/emulated/0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.mega.settings.date_format"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lt2/a;->c(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "24"

    if-eqz v2, :cond_0

    move-object v1, v3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is24Hour ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseFunctionActivity"

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->d:Lcom/mega/engineeringmode/utils/TextClock;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/utils/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->d:Lcom/mega/engineeringmode/utils/TextClock;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/utils/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "loadExternalPublic volumeNames is null"

    invoke-static {p1}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "loadExternalPublic volumeNames is: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":onCreate"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->e:Lcom/mega/engineeringmode/function/BaseFunctionActivity$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->e:Lcom/mega/engineeringmode/function/BaseFunctionActivity$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->g:Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->g:Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->f:Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->f:Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":onResume"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
