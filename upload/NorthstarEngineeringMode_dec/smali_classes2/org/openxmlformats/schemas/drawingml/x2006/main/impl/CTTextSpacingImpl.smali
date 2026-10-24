.class public Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;
.super Lorg/apache/xmlbeans/impl/values/p0;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;


# static fields
.field private static final PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "spcPct"

    const-string v3, "http://schemas.openxmlformats.org/drawingml/2006/main"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "spcPts"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Li5/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/p0;-><init>(Li5/c0;)V

    return-void
.end method


# virtual methods
.method public addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

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

.method public getSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

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

.method public isSetSpcPct()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetSpcPts()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->z(Ljavax/xml/namespace/QName;)I

    move-result p0

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

.method public setSpcPct(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setSpcPts(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public unsetSpcPct()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetSpcPts()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextSpacingImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

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
