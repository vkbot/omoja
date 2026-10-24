.class public final Ll0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;
.implements Li5/m;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Ll0/a;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lk0/h;

    invoke-direct {p1}, Lk0/h;-><init>()V

    iput-object p1, p0, Ll0/a;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Ll0/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Ll0/a;->a:I

    iput-object p1, p0, Ll0/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a([DI)D
    .locals 11

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-int v0, v0

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    double-to-int p1, v2

    iget-object p0, p0, Ll0/a;->b:Ljava/lang/Object;

    check-cast p0, Lk0/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v0, :cond_8

    if-ltz p1, :cond_8

    if-le p1, v0, :cond_0

    goto :goto_5

    :cond_0
    iget-object p0, p0, Lk0/h;->a:Lk0/h$b;

    iget-object v2, p0, Lk0/h$b;->a:[[D

    array-length v3, v2

    if-lt v0, v3, :cond_6

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [[D

    goto :goto_0

    :cond_1
    add-int/2addr v2, v1

    new-array v2, v2, [[D

    :goto_0
    move v3, p2

    :goto_1
    iget-object v4, p0, Lk0/h$b;->a:[[D

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    array-length v3, v4

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_5

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    new-array v4, v4, [D

    aput-object v4, v2, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, p2

    move v4, v1

    :goto_3
    aget-object v5, v2, v3

    array-length v6, v5

    if-ge v4, v6, :cond_4

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v2, v6

    add-int/lit8 v7, v4, -0x1

    aget-wide v7, v6, v7

    array-length v9, v6

    if-ge v4, v9, :cond_3

    aget-wide v9, v6, v4

    add-double/2addr v7, v9

    goto :goto_4

    :cond_3
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    :goto_4
    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lk0/h$b;->a:[[D

    :cond_6
    mul-int/lit8 p2, p1, 0x2

    if-le p2, v0, :cond_7

    sub-int p1, v0, p1

    :cond_7
    iget-object p0, p0, Lk0/h$b;->a:[[D

    aget-object p0, p0, v0

    aget-wide p0, p0, p1

    goto :goto_6

    :cond_8
    :goto_5
    const-wide/16 p0, 0x0

    :goto_6
    return-wide p0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Ll0/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ll0/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "combin(n, r)"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
