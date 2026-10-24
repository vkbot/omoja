.class public Lcom/android/server/policy/MegaPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source ""


# static fields
.field private static final A:Ljava/lang/String; = "GESTURE_FIVE_POINTER_CATCH"

.field private static final B:Ljava/lang/String; = "GESTURE_THREE_POINTER_MOVE"

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String; = "up"

.field private static final r:Ljava/lang/String; = "down"

.field private static final s:Ljava/lang/String; = "left"

.field private static final t:Ljava/lang/String; = "right"

.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x2

.field private static final x:I = 0x3

.field static final y:I = 0x0

.field static final z:I = 0x1


# instance fields
.field a:Lcom/android/server/wm/w;

.field b:Lcom/android/server/policy/g;

.field c:Lcom/android/server/policy/g;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private final h:Ljava/lang/Object;

.field private final i:Landroid/os/Handler;

.field private final j:Landroid/os/RemoteCallbackList;

.field private k:Z

.field private l:I

.field private final m:Ljava/lang/Runnable;

.field private n:I

.field private final o:Lcom/android/server/policy/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->h:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->i:Landroid/os/Handler;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->j:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->k:Z

    new-instance v1, Lcom/android/server/policy/a;

    invoke-direct {v1, p0}, Lcom/android/server/policy/a;-><init>(Lcom/android/server/policy/MegaPhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->m:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->n:I

    new-instance v0, Lcom/android/server/policy/i;

    invoke-direct {v0}, Lcom/android/server/policy/i;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->o:Lcom/android/server/policy/i;

    return-void
.end method

.method static synthetic a(Lcom/android/server/policy/MegaPhoneWindowManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/MegaPhoneWindowManager;->f(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/server/policy/MegaPhoneWindowManager;ILandroid/graphics/Point;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/MegaPhoneWindowManager;->k(ILandroid/graphics/Point;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c(Lcom/android/server/policy/MegaPhoneWindowManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/MegaPhoneWindowManager;->l(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/android/server/policy/MegaPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->f:Z

    return p0
.end method

.method private e(ILjava/lang/String;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xe9b

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x2f24a2

    if-eq v0, v1, :cond_2

    const v1, 0x32a007

    if-eq v0, v1, :cond_1

    const v1, 0x677c21c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_1

    :cond_1
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v4

    goto :goto_1

    :cond_2
    const-string v0, "down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v5

    goto :goto_1

    :cond_3
    const-string v0, "up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_b

    if-eq p2, v5, :cond_9

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_5

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    iget p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-nez p2, :cond_6

    return v5

    :cond_6
    if-ne p1, v5, :cond_d

    iget p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-ne p0, v4, :cond_d

    return v5

    :cond_7
    if-nez p1, :cond_8

    iget p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-ne p2, v4, :cond_8

    return v5

    :cond_8
    if-ne p1, v5, :cond_d

    iget p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-nez p0, :cond_d

    return v5

    :cond_9
    if-nez p1, :cond_a

    iget p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-ne p2, v5, :cond_a

    return v5

    :cond_a
    if-ne p1, v5, :cond_d

    iget p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-ne p0, v3, :cond_d

    return v5

    :cond_b
    if-nez p1, :cond_c

    iget p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-ne p2, v3, :cond_c

    return v5

    :cond_c
    if-ne p1, v5, :cond_d

    iget p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I

    if-ne p0, v5, :cond_d

    return v5

    :cond_d
    :goto_2
    return v2
.end method

.method private f(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "mega.disable_five_point_home"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    shl-int v3, v2, p1

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    sget-object v2, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchHomeFromFivePointerCatch sysValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "display:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " disable:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "GESTURE_FIVE_POINTER_CATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "display_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "reason"

    const-string v2, "system gesture detected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchHomeFromHotKey and send broadcast GESTURE_FIVE_POINTER_CATCH: displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Lcom/android/server/policy/g;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/b;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/b;-><init>(Lcom/android/server/policy/MegaPhoneWindowManager;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/g;-><init>(Landroid/content/Context;ILcom/android/server/policy/f;)V

    iput-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->b:Lcom/android/server/policy/g;

    new-instance v0, Lcom/android/server/policy/g;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/c;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/c;-><init>(Lcom/android/server/policy/MegaPhoneWindowManager;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/g;-><init>(Landroid/content/Context;ILcom/android/server/policy/f;)V

    iput-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->c:Lcom/android/server/policy/g;

    return-void
.end method

.method public static synthetic h(Lcom/android/server/policy/MegaPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MegaPhoneWindowManager;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string v3, "megaPhoneWindowManager notify all listeners"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, La/a/p;

    invoke-interface {v2}, La/a/p;->z()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->m:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->l:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private k(ILandroid/graphics/Point;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "GESTURE_THREE_POINTER_MOVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "displayId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "point"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "direction"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pointerCount"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendPointerMoveBroadcast, displayId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " point="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " direction="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private l(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p1, "device not support flying screen"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/MegaPhoneWindowManager;->e(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fly screen direction not match, touchDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " direction="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-nez p1, :cond_3

    move p2, v0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->f:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/w;->e(II)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/w;->d(II)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/w;->b(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method private m(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/w;->f(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getWindowLayerFromTypeLw(IZ)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->o:Lcom/android/server/policy/i;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/i;->a(IZ)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxWindowLayer()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x7d5

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->n:I

    if-lez v0, :cond_1

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    return p0

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: layer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is greater than maxWindowLayer("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxWindowLayer()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") !!! type = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110085

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->d:Z

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/policy/MegaPhoneWindowManager;->isFlyingScreenSupported(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->e:Z

    sget-object p2, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init isFlyingScreenSupported:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->e:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " enableFivePointerBackHome:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->d:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->e:Z

    if-eqz p2, :cond_0

    const-class p2, Lcom/android/server/wm/w;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/w;

    iput-object p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111010c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->f:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p3, "usePassiveFlyingScreen config not found, use default solution"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->g:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object p1, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p2, "screenPositionMode config not found, use default left-right mode"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/MegaPhoneWindowManager;->g()V

    :try_start_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->k:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    sget-object p1, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p2, "not found config_userActivityTimeoutTime in resource"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e003c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->n:I

    if-lez p1, :cond_1

    sget-object p1, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Custom the toast layer, mCustomToastLayer="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->n:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public isFlyingScreenSupported(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x111009a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string v0, "isFlyingScreenSupported"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public registerUserActivityTimeoutListener(La/a/p;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->h:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p1, "Ignore: register local process listener, unsupported now"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string v1, "Remote listener register successfully"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/MegaPhoneWindowManager;->j()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p1, "Remote listener register failed! Is your target process killed?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Get null listener for register!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unRegisterUserActivityTimeoutListener(La/a/p;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->h:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p1, "Ignore: unregister local process listener, unsupported now"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->i:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/policy/MegaPhoneWindowManager;->p:Ljava/lang/String;

    const-string p1, "Remote listener unregister failed! Is your target process killed?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Get null listener for unregister!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public userActivity()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->userActivity()V

    iget-boolean v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/MegaPhoneWindowManager;->j()V

    :cond_0
    return-void
.end method
