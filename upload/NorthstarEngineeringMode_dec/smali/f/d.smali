.class public final Lf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lf/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final Z:Ljava/util/HashMap;

.field public final b1:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public c1:Landroid/net/wifi/WifiManager;

.field public d1:Ljava/lang/String;

.field public e1:Ljava/lang/String;

.field public f1:I

.field public g1:I

.field public h1:I

.field public i1:I

.field public j1:Landroid/net/wifi/WifiConfiguration;

.field public k1:I

.field public l1:Landroid/net/wifi/WifiInfo;

.field public m1:Landroid/net/NetworkInfo;

.field public n1:Lf/d$a;

.field public o1:I

.field public p1:Z

.field public final q1:Ljava/lang/String;

.field public final r:Ljava/lang/Object;

.field public final r1:Landroid/net/wifi/hotspot2/OsuProvider;

.field public s1:Z

.field public t1:Z

.field public final x:Landroid/util/ArraySet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Landroid/util/ArraySet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/d;->r:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->x:Landroid/util/ArraySet;

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->y:Landroid/util/ArraySet;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/d;->Z:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lf/d;->g1:I

    const/4 v0, 0x0

    iput v0, p0, Lf/d;->h1:I

    iput v0, p0, Lf/d;->i1:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lf/d;->k1:I

    iput v0, p0, Lf/d;->o1:I

    iput-boolean v0, p0, Lf/d;->p1:Z

    iput-boolean v0, p0, Lf/d;->s1:Z

    iput-boolean v0, p0, Lf/d;->t1:Z

    iput-object p1, p0, Lf/d;->b1:Landroid/content/Context;

    .line 6
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lf/d;->d1:Ljava/lang/String;

    .line 7
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object p1, p0, Lf/d;->e1:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lf/d;->f(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    iput p1, p0, Lf/d;->f1:I

    .line 9
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lf/d;->g1:I

    iput-object p2, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    .line 10
    invoke-virtual {p0}, Lf/d;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/wifi/WifiConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/d;->r:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->x:Landroid/util/ArraySet;

    .line 14
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->y:Landroid/util/ArraySet;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/d;->Z:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lf/d;->h1:I

    iput v0, p0, Lf/d;->i1:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lf/d;->k1:I

    iput v0, p0, Lf/d;->o1:I

    iput-boolean v0, p0, Lf/d;->p1:Z

    iput-boolean v0, p0, Lf/d;->s1:Z

    iput-boolean v0, p0, Lf/d;->t1:Z

    iput-object p1, p0, Lf/d;->b1:Landroid/content/Context;

    .line 16
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lf/d;->g1:I

    iput-object p2, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    .line 17
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object p1, p0, Lf/d;->q1:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p3, p4}, Lf/d;->p(Ljava/util/List;Ljava/util/List;)V

    .line 19
    invoke-virtual {p0}, Lf/d;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/wifi/hotspot2/OsuProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/d;->r:Ljava/lang/Object;

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->x:Landroid/util/ArraySet;

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->y:Landroid/util/ArraySet;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/d;->Z:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lf/d;->g1:I

    const/4 v0, 0x0

    iput v0, p0, Lf/d;->h1:I

    iput v0, p0, Lf/d;->i1:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lf/d;->k1:I

    iput v0, p0, Lf/d;->o1:I

    iput-boolean v0, p0, Lf/d;->p1:Z

    iput-boolean v0, p0, Lf/d;->s1:Z

    iput-boolean v0, p0, Lf/d;->t1:Z

    iput-object p1, p0, Lf/d;->b1:Landroid/content/Context;

    iput-object p2, p0, Lf/d;->r1:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 25
    invoke-virtual {p0, p3}, Lf/d;->o(Ljava/util/List;)V

    .line 26
    invoke-virtual {p0}, Lf/d;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/d;->r:Ljava/lang/Object;

    .line 29
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->x:Landroid/util/ArraySet;

    .line 30
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lf/d;->y:Landroid/util/ArraySet;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/d;->Z:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lf/d;->g1:I

    const/4 v0, 0x0

    iput v0, p0, Lf/d;->h1:I

    iput v0, p0, Lf/d;->i1:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lf/d;->k1:I

    iput v0, p0, Lf/d;->o1:I

    iput-boolean v0, p0, Lf/d;->p1:Z

    iput-boolean v0, p0, Lf/d;->s1:Z

    iput-boolean v0, p0, Lf/d;->t1:Z

    iput-object p1, p0, Lf/d;->b1:Landroid/content/Context;

    .line 32
    invoke-virtual {p0, p2}, Lf/d;->o(Ljava/util/List;)V

    .line 33
    invoke-virtual {p0}, Lf/d;->t()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\""

    invoke-static {v0, p0, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WifiManagerPotentialLeak"
        }
    .end annotation

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "SAE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "EAP_SUITE_B_192"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "OWE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "OWE_TRANSITION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v6, 0x2

    const/4 v7, 0x5

    const-string/jumbo v8, "wifi"

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Lr2/c;->m(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v6, v7

    :cond_0
    return v6

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eqz p1, :cond_3

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Lr2/c;->l(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v9, v10

    :cond_2
    return v9

    :cond_3
    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz v1, :cond_5

    return v7

    :cond_5
    if-eqz v2, :cond_6

    return v6

    :cond_6
    if-eqz v3, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    if-eqz v4, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    if-eqz v5, :cond_9

    return v10

    :cond_9
    return v9
.end method

.method public static f(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_0
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Lf/d;)I
    .locals 3
    .param p1    # Lf/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lf/d;->i()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lf/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lf/d;->i()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lf/d;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lf/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lf/d;->k()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lf/d;->k()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lf/d;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lf/d;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lf/d;->l()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lf/d;->l()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lf/d;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lf/d;->o1:I

    iget v1, p1, Lf/d;->o1:I

    if-eq v0, v1, :cond_6

    sub-int/2addr v1, v0

    return v1

    :cond_6
    iget v0, p1, Lf/d;->k1:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iget v2, p0, Lf/d;->k1:I

    invoke-static {v2, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lf/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lf/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    iget-object p0, p0, Lf/d;->d1:Ljava/lang/String;

    iget-object p1, p1, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lf/d;

    invoke-virtual {p0, p1}, Lf/d;->a(Lf/d;)I

    move-result p0

    return p0
.end method

.method public final d()I
    .locals 1

    iget p0, p0, Lf/d;->k1:I

    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lf/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lf/d;

    invoke-virtual {p0, p1}, Lf/d;->a(Lf/d;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lf/d;->q1:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lf/d;->r1:Landroid/net/wifi/hotspot2/OsuProvider;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lf/d;->d1:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Landroid/net/wifi/WifiManager;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WifiManagerPotentialLeak"
        }
    .end annotation

    iget-object v0, p0, Lf/d;->c1:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/d;->b1:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lf/d;->c1:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object p0, p0, Lf/d;->c1:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lf/d;->k1:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v1, v0

    iget v0, p0, Lf/d;->g1:I

    mul-int/lit8 v0, v0, 0x17

    add-int/2addr v0, v1

    iget-object p0, p0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1d

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget p0, p0, Lf/d;->g1:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()Z
    .locals 1

    iget p0, p0, Lf/d;->k1:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object p0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lf/d;->d1:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lr2/b;->c(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    invoke-static {p1}, Lr2/b;->c(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lf/d;->f(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iget-boolean v3, p0, Lf/d;->s1:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lf/d;->h()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-static {v3}, Lr2/c;->m(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lf/d;->t1:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lf/d;->h()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-static {v3}, Lr2/c;->l(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    if-nez v0, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lf/d;->f1:I

    invoke-static {p1}, Lf/d;->f(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    if-ne p0, p1, :cond_7

    move v1, v2

    :cond_7
    :goto_0
    return v1
.end method

.method public final o(Ljava/util/List;)V
    .locals 10

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lf/d;->c:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lf/d;->r1:Landroid/net/wifi/hotspot2/OsuProvider;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lf/d;->r1:Landroid/net/wifi/hotspot2/OsuProvider;

    if-nez v4, :cond_c

    iget-object v4, p0, Lf/d;->d1:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v5, p0, Lf/d;->e1:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_1
    iget-boolean v4, p0, Lf/d;->s1:Z

    if-eqz v4, :cond_4

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "SAE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lf/d;->h()Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-static {v4}, Lr2/c;->m(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "PSK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_4
    iget v4, p0, Lf/d;->f1:I

    if-eq v4, v2, :cond_5

    if-ne v4, v1, :cond_6

    :cond_5
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "PSK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "SAE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v4, p0, Lf/d;->t1:Z

    iget-object v5, p0, Lf/d;->b1:Landroid/content/Context;

    const/4 v6, 0x4

    if-eqz v4, :cond_8

    invoke-static {v5, v3}, Lf/d;->e(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result v4

    if-ne v4, v6, :cond_7

    invoke-virtual {p0}, Lf/d;->h()Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-static {v6}, Lr2/c;->l(Landroid/net/wifi/WifiManager;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_0

    :cond_7
    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lf/d;->f1:I

    if-eq v4, v6, :cond_9

    if-nez v4, :cond_a

    :cond_9
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "OWE_TRANSITION"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lf/d;->f1:I

    invoke-static {v5, v3}, Lf/d;->e(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result v5

    if-ne v4, v5, :cond_b

    goto/16 :goto_0

    :cond_b
    :goto_2
    const-string p1, "SettingsLib.AccessPoint"

    const-string v0, "ScanResult %s\nkey of %s did not match current AP key %s"

    iget-object v1, p0, Lf/d;->b1:Landroid/content/Context;

    iget-object v2, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1, v3}, Lf/d;->e(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result v1

    invoke-static {v1, v2, v4}, Lf/d;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lf/d;->c:Ljava/lang/String;

    filled-new-array {v3, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not matches a Passpoint by ScanResult"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_3
    invoke-virtual {p0}, Lf/d;->d()I

    move-result v0

    iget-object v3, p0, Lf/d;->r:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lf/d;->x:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    iget-object v4, p0, Lf/d;->x:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lf/d;->i()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object p1, p0, Lf/d;->r:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v4, p0, Lf/d;->x:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    move v7, v5

    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget v9, v8, Landroid/net/wifi/ScanResult;->level:I

    if-le v9, v7, :cond_f

    move-object v6, v8

    move v7, v9

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_10
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v7, v5, :cond_11

    iget p1, p0, Lf/d;->k1:I

    if-eq p1, v5, :cond_11

    add-int/2addr p1, v7

    div-int/2addr p1, v1

    iput p1, p0, Lf/d;->k1:I

    goto :goto_5

    :cond_11
    iput v7, p0, Lf/d;->k1:I

    :goto_5
    if-eqz v6, :cond_1c

    iget-object p1, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object p1, p0, Lf/d;->d1:Ljava/lang/String;

    iget-object p1, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object p1, p0, Lf/d;->e1:Ljava/lang/String;

    iget-object p1, p0, Lf/d;->b1:Landroid/content/Context;

    invoke-static {p1, v6}, Lf/d;->e(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result p1

    iput p1, p0, Lf/d;->f1:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq p1, v1, :cond_12

    if-ne p1, v2, :cond_17

    :cond_12
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA-PSK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v2, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "RSN-PSK"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "RSN-SAE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    move p1, v5

    goto :goto_6

    :cond_13
    if-eqz v2, :cond_14

    move p1, v1

    goto :goto_6

    :cond_14
    if-eqz p1, :cond_15

    move p1, v3

    goto :goto_6

    :cond_15
    if-nez v7, :cond_16

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Received abnormal flag string: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SettingsLib.AccessPoint"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move p1, v4

    :goto_6
    iput p1, p0, Lf/d;->h1:I

    :cond_17
    iget p1, p0, Lf/d;->f1:I

    if-ne p1, v5, :cond_1a

    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "RSN-EAP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_7

    :cond_18
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-EAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    move v1, v3

    goto :goto_7

    :cond_19
    move v1, v4

    :goto_7
    iput v1, p0, Lf/d;->i1:I

    :cond_1a
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move v4, v3

    :cond_1b
    iput-boolean v4, p0, Lf/d;->s1:Z

    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "OWE_TRANSITION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lf/d;->t1:Z

    :cond_1c
    invoke-virtual {p0}, Lf/d;->j()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lf/d;->d1:Ljava/lang/String;

    invoke-static {v1}, Lf/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_1d
    :goto_8
    invoke-virtual {p0}, Lf/d;->d()I

    move-result p1

    if-lez p1, :cond_1e

    if-eq p1, v0, :cond_1e

    invoke-virtual {p0}, Lf/d;->u()Z

    new-instance p1, Lf/a;

    invoke-direct {p1, p0, v3}, Lf/a;-><init>(Lf/d;I)V

    invoke-static {p1}, Le/a;->b(Ljava/lang/Runnable;)V

    :cond_1e
    new-instance p1, Lf/b;

    invoke-direct {p1, p0, v3}, Lf/b;-><init>(Lf/d;I)V

    invoke-static {p1}, Le/a;->b(Ljava/lang/Runnable;)V

    return-void

    :goto_9
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1f
    const-string p0, "SettingsLib.AccessPoint"

    const-string p1, "Cannot set scan results to empty list"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final p(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lf/d;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/d;->y:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/d;->y:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lf/d;->o(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lf/d;->o(Ljava/util/List;)V

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final q(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1    # Landroid/net/wifi/WifiConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/d;->d1:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lf/d;->g1:I

    new-instance p1, Lf/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 5
    .param p1    # Landroid/net/wifi/WifiConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lf/d;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    invoke-static {p2}, Ld/f;->Q(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Ld/f;->Q(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    goto :goto_1

    :cond_0
    invoke-static {p2}, Ld/f;->R(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget v3, p0, Lf/d;->g1:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v3, v4, :cond_b

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lf/d;->e1:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lf/d;->m(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lf/d;->d1:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_b

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {p2}, Ld/f;->R(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_3
    iget-object v3, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eq v4, p1, :cond_8

    invoke-virtual {p0, p1}, Lf/d;->q(Landroid/net/wifi/WifiConfiguration;)V

    :cond_8
    iget p1, p0, Lf/d;->k1:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    if-eq p1, v4, :cond_9

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const/16 v4, -0x7f

    if-eq p1, v4, :cond_9

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lf/d;->k1:I

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq p1, v4, :cond_a

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    iput-object p2, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    iput-object p3, p0, Lf/d;->m1:Landroid/net/NetworkInfo;

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lf/d;->m1:Landroid/net/NetworkInfo;

    goto :goto_6

    :cond_c
    move v1, v2

    :goto_6
    if-eqz v1, :cond_d

    iget-object p1, p0, Lf/d;->n1:Lf/d$a;

    if-eqz p1, :cond_d

    new-instance p1, Lf/a;

    invoke-direct {p1, p0, v2}, Lf/a;-><init>(Lf/d;I)V

    invoke-static {p1}, Le/a;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lf/d;->d()I

    move-result p1

    if-eq v0, p1, :cond_d

    new-instance p1, Lf/b;

    invoke-direct {p1, p0, v2}, Lf/b;-><init>(Lf/d;I)V

    invoke-static {p1}, Le/a;->b(Ljava/lang/Runnable;)V

    :cond_d
    return v1
.end method

.method public final s(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 6

    iget-boolean v0, p0, Lf/d;->p1:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf/d;->p1:Z

    invoke-virtual {p0}, Lf/d;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lf/d;->p1:Z

    iget-boolean p1, p1, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lf/d;->p1:Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lf/d;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lf/d;->x:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lf/d;->p1:Z

    iget-boolean v4, v4, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lf/d;->p1:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    iget-boolean p0, p0, Lf/d;->p1:Z

    if-ne v0, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final t()V
    .locals 3

    invoke-virtual {p0}, Lf/d;->j()Z

    move-result v0

    const-string v1, "FQDN:"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Lf/d;->f(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {v0, v1, v2}, Lf/d;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lf/d;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lf/d;->q1:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/d;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lf/d;->r1:Landroid/net/wifi/hotspot2/OsuProvider;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OSU:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/d;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lf/d;->d1:Ljava/lang/String;

    iget-object v1, p0, Lf/d;->e1:Ljava/lang/String;

    iget v2, p0, Lf/d;->f1:I

    invoke-static {v2, v0, v1}, Lf/d;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/d;->c:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessPoint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/d;->e1:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/d;->e1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d;->g1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf/d;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ",saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lf/d;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ",active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_3

    invoke-static {v1}, Ld/f;->K(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_3

    const-string v1, ",ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lf/d;->d()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "SettingsLib.AccessPoint"

    const-string v2, "NetworkInfo is null, cannot return detailed state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    const-string v1, ",connectable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ", Security="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d;->f1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d;->f1:I

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    const/4 v3, 0x4

    if-eq v1, v3, :cond_f

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d;->f1:I

    iget v4, p0, Lf/d;->h1:I

    if-ne v1, v2, :cond_6

    const-string v1, "WEP"

    goto :goto_1

    :cond_6
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v1, v6, :cond_a

    if-ne v4, v2, :cond_7

    const-string v1, "WPA"

    goto :goto_1

    :cond_7
    if-ne v4, v6, :cond_8

    const-string v1, "WPA2"

    goto :goto_1

    :cond_8
    if-ne v4, v5, :cond_9

    const-string v1, "WPA_WPA2"

    goto :goto_1

    :cond_9
    const-string v1, "PSK"

    goto :goto_1

    :cond_a
    if-ne v1, v5, :cond_b

    const-string v1, "EAP"

    goto :goto_1

    :cond_b
    const/4 v4, 0x5

    if-ne v1, v4, :cond_c

    const-string v1, "SAE"

    goto :goto_1

    :cond_c
    const/4 v4, 0x6

    if-ne v1, v4, :cond_d

    const-string v1, "SUITE_B"

    goto :goto_1

    :cond_d
    if-ne v1, v3, :cond_e

    const-string v1, "OWE"

    goto :goto_1

    :cond_e
    const-string v1, "NONE"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d;->o1:I

    if-eqz v1, :cond_10

    const-string v1, ",speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d;->o1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, ",metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/d;->p1:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    invoke-static {v1, v3}, Lr2/b;->d(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_11
    const/4 v2, 0x0

    :cond_12
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d;->k1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/d;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, ",scan cache size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/d;->x:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object p0, p0, Lf/d;->y:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final u()Z
    .locals 8

    iget v0, p0, Lf/d;->o1:I

    iget-object v1, p0, Lf/d;->Z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const-string v3, "SettingsLib.AccessPoint"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lf/d;->d1:Ljava/lang/String;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Generating fallbackspeed for %s using cache: %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    move v5, v2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/e;

    iget-object v6, v6, Lf/e;->c:Landroid/net/ScoredNetwork;

    iget v7, p0, Lf/d;->k1:I

    invoke-virtual {v6, v7}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    div-int/2addr v5, v2

    :goto_2
    iget-object v1, p0, Lf/d;->d1:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s generated fallback speed is: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    if-ge v5, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    if-ge v5, v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0xf

    if-ge v5, v1, :cond_6

    const/16 v1, 0xa

    goto :goto_3

    :cond_6
    const/16 v1, 0x19

    if-ge v5, v1, :cond_7

    const/16 v1, 0x14

    goto :goto_3

    :cond_7
    const/16 v1, 0x1e

    :goto_3
    iput v1, p0, Lf/d;->o1:I

    if-eq v0, v1, :cond_8

    const/4 v4, 0x1

    :cond_8
    iget-object p0, p0, Lf/d;->d1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: Set speed to %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method
