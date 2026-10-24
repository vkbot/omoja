.class public Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

.field public B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ld/g;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ld/g;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Landroid/os/Handler;

.field public E:Ld/m;

.field public final F:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;

.field public final G:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/bluetooth/BluetoothHeadsetClient;

.field public q:Landroid/bluetooth/BluetoothPbapClient;

.field public r:Landroid/bluetooth/BluetoothA2dp;

.field public s:Lcom/mega/engineeringmode/ui/MegaSwitch;

.field public t:Landroid/bluetooth/BluetoothAdapter;

.field public u:Z

.field public v:Landroid/widget/TextView;

.field public w:Landroidx/recyclerview/widget/RecyclerView;

.field public x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

.field public y:Landroid/widget/TextView;

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->C:Ljava/util/Set;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->D:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;-><init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->F:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;-><init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->G:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

    new-instance v0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$c;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$c;-><init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V

    return-void
.end method

.method public static n(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "isConnected\uff1a"

    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "isConnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "BluetoothTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0
.end method

.method public static o(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BluetoothTestActivity"

    const-string/jumbo v1, "updatePHFStatus"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-------updatePHFStatus device: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v9, 0x2

    if-eqz v8, :cond_2

    invoke-virtual {v8, v6}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    const-string/jumbo v10, "updatePHFStatus mHeadsetClient "

    invoke-static {v10, v8, v0}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-eq v8, v9, :cond_1

    if-ne v8, v7, :cond_2

    :cond_1
    move v3, v7

    :cond_2
    iget-object v8, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v6}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    const-string/jumbo v10, "updatePHFStatus mPbapClient "

    invoke-static {v10, v8, v0}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-eq v8, v9, :cond_3

    if-ne v8, v7, :cond_4

    :cond_3
    move v4, v7

    :cond_4
    iget-object v8, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v8, :cond_0

    invoke-virtual {v8, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    const-string/jumbo v8, "updatePHFStatus mBluetoothA2dp "

    invoke-static {v8, v6, v0}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-eq v6, v9, :cond_5

    if-ne v6, v7, :cond_0

    :cond_5
    move v5, v7

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->n:Landroid/widget/TextView;

    new-array v1, v7, [Ljava/lang/Object;

    const v6, 0x7f1202e6

    const v8, 0x7f1200e4

    if-eqz v3, :cond_7

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    const v3, 0x7f12005a

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o:Landroid/widget/TextView;

    new-array v1, v7, [Ljava/lang/Object;

    if-eqz v4, :cond_8

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v1, v2

    const v3, 0x7f12005e

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->m:Landroid/widget/TextView;

    new-array v1, v7, [Ljava/lang/Object;

    if-eqz v5, :cond_9

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    aput-object v3, v1, v2

    const v2, 0x7f120055

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0108

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a018f

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const v1, 0x7f12005d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const v1, 0x7f120059

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mega.carsettings"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BluetoothTestActivity"

    if-nez v0, :cond_4

    const-string v0, "go to system setting"

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "go to mega setting"

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.mega.carsettings.CarSettingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "tab_index"

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0052

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->u:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onCreate  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->u:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothTestActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a0090

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a008f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a0088

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0a008a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f0a008b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0a0108

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->k:Landroid/widget/Button;

    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->l:Landroid/widget/Button;

    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->l:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0199

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->v:Landroid/widget/TextView;

    const p1, 0x7f0a0197

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0a009e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->y:Landroid/widget/TextView;

    const p1, 0x7f0a009d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->A:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;

    invoke-direct {v0, v1}, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->A:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    new-instance v0, Lg1/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg1/r;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->u:Z

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->u:Z

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p(Z)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1201c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->F:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f1202e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005a

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005e

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f120055

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->G:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q:Landroid/bluetooth/BluetoothPbapClient;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {p1, v2, v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r:Landroid/bluetooth/BluetoothA2dp;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-static {p0}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->E:Ld/m;

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "BluetoothTestActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p:Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_1
    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q:Landroid/bluetooth/BluetoothPbapClient;

    :cond_2
    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r:Landroid/bluetooth/BluetoothA2dp;

    :cond_3
    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->F:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    const-string/jumbo v0, "onResume"

    const-string v1, "BluetoothTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resumeBondDevices getName  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method public final q(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateDevicesList name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BondState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothTestActivity"

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->E:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0, p1}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cachedBluetoothDevice  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cachedBluetoothDevice "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isConnected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/g;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->C:Ljava/util/Set;

    const-string v3, "addItemBlueToothData"

    const-string v4, "BlueToothDataAdapter"

    const/16 v5, 0xc

    if-ne v0, v5, :cond_3

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bound contains "

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->A:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyItemChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-virtual {v0, p1}, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->a(Ld/g;)V

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->A:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "mFoundList contains"

    invoke-static {v2, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->A:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-virtual {v0, p1}, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->a(Ld/g;)V

    :cond_5
    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final r(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "visible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12005c

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->j:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mService"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getAddress"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    aput-object v3, v1, v2

    const v0, 0x7f12005b

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
