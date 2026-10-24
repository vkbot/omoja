.class public Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;
.super Lorg/apache/xmlbeans/impl/values/p0;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;


# static fields
.field private static final PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v3, "objectPr"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "progId"

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "dvAspect"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "link"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "oleUpdate"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "autoLoad"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "shapeId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v3, "id"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Li5/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/p0;-><init>(Li5/c0;)V

    return-void
.end method


# virtual methods
.method public addNewObjectPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectPr;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectPr;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAutoLoad()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x5

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Li5/g0;->getBooleanValue()Z

    move-result p0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDvAspect()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect$Enum;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/g0;

    if-nez v1, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/g0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Li5/g0;->getEnumValue()Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect$Enum;

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

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

.method public getLink()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public getObjectPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectPr;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectPr;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOleUpdate()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate$Enum;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Li5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/g0;->getEnumValue()Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate$Enum;

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

.method public getProgId()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

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

.method public getShapeId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

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

.method public isSetAutoLoad()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetDvAspect()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

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

.method public isSetId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetLink()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

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

.method public isSetObjectPr()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->z(Ljavax/xml/namespace/QName;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetOleUpdate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetProgId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public setAutoLoad(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Li5/g0;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDvAspect(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect$Enum;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Li5/g0;->setEnumValue(Li5/h0;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public setObjectPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectPr;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setOleUpdate(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate$Enum;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Li5/g0;->setEnumValue(Li5/h0;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setProgId(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setShapeId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1, p2}, Li5/g0;->setLongValue(J)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetAutoLoad()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetDvAspect()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

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

.method public unsetId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetLink()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

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

.method public unsetObjectPr()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->v(ILjavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetOleUpdate()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetProgId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public xgetAutoLoad()Li5/m0;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x5

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/m0;

    if-nez v1, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/m0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetDvAspect()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;

    if-nez v1, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetLink()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public xgetOleUpdate()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetProgId()Li5/g2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

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

.method public xgetShapeId()Li5/l2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

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

.method public xsetAutoLoad(Li5/m0;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x5

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/m0;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/m0;

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

.method public xsetDvAspect(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x7

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetLink(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public xsetOleUpdate(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x4

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetProgId(Li5/g2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x1

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

.method public xsetShapeId(Li5/l2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x6

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
