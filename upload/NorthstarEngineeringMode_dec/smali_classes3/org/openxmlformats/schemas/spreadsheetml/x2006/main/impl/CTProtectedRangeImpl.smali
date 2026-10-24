.class public Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;
.super Lorg/apache/xmlbeans/impl/values/p0;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;


# static fields
.field private static final PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v3, "securityDescriptor"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "password"

    const-string v4, ""

    invoke-direct {v1, v4, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "sqref"

    invoke-direct {v1, v4, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "name"

    invoke-direct {v1, v4, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, v4, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "algorithmName"

    invoke-direct {v1, v4, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "hashValue"

    invoke-direct {v1, v4, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "saltValue"

    invoke-direct {v1, v4, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "spinCount"

    invoke-direct {v1, v4, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Li5/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/p0;-><init>(Li5/c0;)V

    return-void
.end method

.method public static synthetic c2(I)[Li5/g2;
    .locals 0

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->lambda$xgetSecurityDescriptorArray$1(I)[Li5/g2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d2(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->lambda$getSecurityDescriptorArray$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSecurityDescriptorArray$0(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$xgetSecurityDescriptorArray$1(I)[Li5/g2;
    .locals 0

    new-array p0, p0, [Li5/g2;

    return-object p0
.end method


# virtual methods
.method public addNewSecurityDescriptor()Li5/g2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g2;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addSecurityDescriptor(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    invoke-interface {p0, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHashValue()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getByteArrayValue()[B

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPassword()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getByteArrayValue()[B

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSaltValue()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getByteArrayValue()[B

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSecurityDescriptor2()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSecurityDescriptorArray(I)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSecurityDescriptorArray()[Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    .line 1
    aget-object v0, v0, v1

    new-instance v1, Ld6/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld6/d;-><init>(I)V

    new-instance v2, Lorg/apache/poi/hssf/record/b1;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/h2;->getObjectArray(Ljavax/xml/namespace/QName;Ljava/util/function/Function;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityDescriptorList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/n;

    new-instance v2, Lg6/h;

    const/16 v1, 0x11

    invoke-direct {v2, p0, v1}, Lg6/h;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v3, Lc6/d;

    const/16 v1, 0x19

    invoke-direct {v3, p0, v1}, Lc6/d;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v4, Le6/f0;

    const/16 v1, 0x16

    invoke-direct {v4, p0, v1}, Le6/f0;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v5, Lb6/v4;

    const/16 v1, 0x1b

    invoke-direct {v5, p0, v1}, Lb6/v4;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v6, Lg6/g;

    const/16 v1, 0xb

    invoke-direct {v6, p0, v1}, Lg6/g;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/n;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSpinCount()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getLongValue()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSqref()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getListValue()Ljava/util/List;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewSecurityDescriptor(I)Li5/g2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->n(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g2;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertSecurityDescriptor(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->n(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    invoke-interface {p0, p2}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetAlgorithmName()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetHashValue()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetPassword()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetSaltValue()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetSecurityDescriptor2()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetSpinCount()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeSecurityDescriptor(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->v(ILjavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAlgorithmName(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x5

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setHashValue([B)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x6

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Li5/g0;->setByteArrayValue([B)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x3

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPassword([B)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Li5/g0;->setByteArrayValue([B)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSaltValue([B)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x7

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Li5/g0;->setByteArrayValue([B)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSecurityDescriptor2(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x4

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSecurityDescriptorArray(ILjava/lang/String;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p2}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSecurityDescriptorArray([Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    .line 3
    aget-object v1, v1, v2

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/p0;->arraySetterHelper([Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSpinCount(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x8

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1, p2}, Li5/g0;->setLongValue(J)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSqref(Ljava/util/List;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Li5/g0;->setListValue(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfSecurityDescriptorArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->z(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetAlgorithmName()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->E(Ljavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetHashValue()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->E(Ljavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetPassword()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->E(Ljavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetSaltValue()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->E(Ljavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetSecurityDescriptor2()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->E(Ljavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetSpinCount()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->E(Ljavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetHashValue()Li5/k0;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/k0;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetSaltValue()Li5/k0;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/k0;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetSecurityDescriptor2()Li5/g2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g2;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetSecurityDescriptorArray(I)Li5/g2;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g2;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetSecurityDescriptorArray()[Li5/g2;
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    .line 1
    aget-object v0, v0, v1

    new-instance v1, Lh5/e;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lh5/e;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->xgetArray(Ljavax/xml/namespace/QName;Ljava/util/function/IntFunction;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Li5/g2;

    return-object p0
.end method

.method public xgetSecurityDescriptorList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/g2;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/o;

    new-instance v2, Lg6/i;

    const/16 v1, 0xf

    invoke-direct {v2, p0, v1}, Lg6/i;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v3, Lb6/w4;

    const/16 v1, 0x17

    invoke-direct {v3, p0, v1}, Lb6/w4;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v4, Lg6/v;

    const/16 v1, 0xc

    invoke-direct {v4, p0, v1}, Lg6/v;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v5, Lb6/y4;

    const/16 v1, 0x18

    invoke-direct {v5, p0, v1}, Lb6/y4;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    new-instance v6, Lb6/q4;

    const/16 v1, 0x1a

    invoke-direct {v6, p0, v1}, Lb6/q4;-><init>(Lorg/apache/xmlbeans/impl/values/p0;I)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/o;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetSpinCount()Li5/l2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/l2;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x5

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetHashValue(Li5/k0;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x6

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/k0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/k0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x3

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetSaltValue(Li5/k0;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x7

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/k0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/k0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetSecurityDescriptor2(Li5/g2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x4

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g2;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetSecurityDescriptorArray(ILi5/g2;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g2;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetSecurityDescriptorArray([Li5/g2;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    .line 3
    aget-object v1, v1, v2

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/p0;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetSpinCount(Li5/l2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x8

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/l2;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/l2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
