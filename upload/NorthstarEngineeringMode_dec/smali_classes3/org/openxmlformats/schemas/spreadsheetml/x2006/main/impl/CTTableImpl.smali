.class public Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;
.super Lorg/apache/xmlbeans/impl/values/p0;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;


# static fields
.field private static final PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1b

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "autoFilter"

    const-string v3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "sortState"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "tableColumns"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "tableStyleInfo"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "extLst"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "id"

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "name"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "displayName"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "comment"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "ref"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "tableType"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "headerRowCount"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "insertRow"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "insertRowShift"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "totalsRowCount"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "totalsRowShown"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "published"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "headerRowDxfId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "dataDxfId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "totalsRowDxfId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "headerRowBorderDxfId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "tableBorderDxfId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "totalsRowBorderDxfId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "headerRowCellStyle"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "dataCellStyle"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "totalsRowCellStyle"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "connectionId"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Li5/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/p0;-><init>(Li5/c0;)V

    return-void
.end method


# virtual methods
.method public addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

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

.method public getComment()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

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

.method public getConnectionId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x1a

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

.method public getDataCellStyle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x18

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

.method public getDataDxfId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

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

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;

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

.method public getHeaderRowBorderDxfId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x14

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

.method public getHeaderRowCellStyle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x17

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

.method public getHeaderRowCount()J
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xb

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

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Li5/g0;->getLongValue()J

    move-result-wide v1

    :goto_1
    monitor-exit v0

    return-wide v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHeaderRowDxfId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

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

.method public getId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

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

.method public getInsertRow()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xc

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

.method public getInsertRowShift()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xd

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

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

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

.method public getPublished()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x10

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

.method public getRef()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x9

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

.method public getSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;

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

.method public getTableBorderDxfId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x15

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

.method public getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

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

.method public getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

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

.method public getTableType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xa

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

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalsRowBorderDxfId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x16

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

.method public getTotalsRowCellStyle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x19

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

.method public getTotalsRowCount()J
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xe

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

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Li5/g0;->getLongValue()J

    move-result-wide v1

    :goto_1
    monitor-exit v0

    return-wide v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalsRowDxfId()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

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

.method public getTotalsRowShown()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xf

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

.method public isSetAutoFilter()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetComment()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetConnectionId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x1a

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

.method public isSetDataCellStyle()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x18

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

.method public isSetDataDxfId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

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

.method public isSetExtLst()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->z(Ljavax/xml/namespace/QName;)I

    move-result p0

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

.method public isSetHeaderRowBorderDxfId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x14

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

.method public isSetHeaderRowCellStyle()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x17

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

.method public isSetHeaderRowCount()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xb

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

.method public isSetHeaderRowDxfId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

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

.method public isSetInsertRow()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xc

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

.method public isSetInsertRowShift()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xd

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

.method public isSetName()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetPublished()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x10

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

.method public isSetSortState()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public isSetTableBorderDxfId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x15

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

.method public isSetTableStyleInfo()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->z(Ljavax/xml/namespace/QName;)I

    move-result p0

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

.method public isSetTableType()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xa

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

.method public isSetTotalsRowBorderDxfId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x16

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

.method public isSetTotalsRowCellStyle()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x19

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

.method public isSetTotalsRowCount()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xe

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

.method public isSetTotalsRowDxfId()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

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

.method public isSetTotalsRowShown()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xf

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

.method public setAutoFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setConnectionId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x1a

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

.method public setDataCellStyle(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x18

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

.method public setDataDxfId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x12

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

.method public setDisplayName(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setHeaderRowBorderDxfId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x14

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

.method public setHeaderRowCellStyle(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x17

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

.method public setHeaderRowCount(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xb

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

.method public setHeaderRowDxfId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x11

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

.method public setId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1, p2}, Li5/g0;->setLongValue(J)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setInsertRow(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xc

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

.method public setInsertRowShift(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xd

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

.method public setName(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Li5/g0;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPublished(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x10

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

.method public setRef(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x9

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

.method public setSortState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setTableBorderDxfId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x15

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

.method public setTableColumns(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setTableStyleInfo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/h2;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setTableType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xa

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

.method public setTotalsRowBorderDxfId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x16

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

.method public setTotalsRowCellStyle(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x19

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

.method public setTotalsRowCount(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xe

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

.method public setTotalsRowDxfId(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x13

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

.method public setTotalsRowShown(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xf

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

.method public unsetAutoFilter()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetComment()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetConnectionId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x1a

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

.method public unsetDataCellStyle()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x18

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

.method public unsetDataDxfId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

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

.method public unsetExtLst()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

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

.method public unsetHeaderRowBorderDxfId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x14

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

.method public unsetHeaderRowCellStyle()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x17

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

.method public unsetHeaderRowCount()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xb

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

.method public unsetHeaderRowDxfId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

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

.method public unsetInsertRow()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xc

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

.method public unsetInsertRowShift()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xd

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

.method public unsetName()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetPublished()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x10

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

.method public unsetSortState()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

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

.method public unsetTableBorderDxfId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x15

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

.method public unsetTableStyleInfo()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

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

.method public unsetTableType()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xa

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

.method public unsetTotalsRowBorderDxfId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x16

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

.method public unsetTotalsRowCellStyle()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x19

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

.method public unsetTotalsRowCount()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xe

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

.method public unsetTotalsRowDxfId()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

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

.method public unsetTotalsRowShown()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xf

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

.method public xgetComment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

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

.method public xgetConnectionId()Li5/l2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x1a

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

.method public xgetDataCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x18

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

.method public xgetDataDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetDisplayName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

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

.method public xgetHeaderRowBorderDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetHeaderRowCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x17

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

.method public xgetHeaderRowCount()Li5/l2;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xb

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/l2;

    if-nez v1, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/l2;

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

.method public xgetHeaderRowDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetId()Li5/l2;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

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

.method public xgetInsertRow()Li5/m0;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xc

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

.method public xgetInsertRowShift()Li5/m0;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xd

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

.method public xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

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

.method public xgetPublished()Li5/m0;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x10

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

.method public xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetTableBorderDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetTableType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xa

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;

    if-nez v1, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;

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

.method public xgetTotalsRowBorderDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetTotalsRowCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x19

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

.method public xgetTotalsRowCount()Li5/l2;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xe

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Li5/l2;

    if-nez v1, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Li5/l2;

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

.method public xgetTotalsRowDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetTotalsRowShown()Li5/m0;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xf

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

.method public xsetComment(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x8

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

.method public xsetConnectionId(Li5/l2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x1a

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

.method public xsetDataCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x18

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

.method public xsetDataDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x12

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetDisplayName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x7

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

.method public xsetHeaderRowBorderDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x14

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetHeaderRowCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x17

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

.method public xsetHeaderRowCount(Li5/l2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xb

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

.method public xsetHeaderRowDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x11

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetId(Li5/l2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x5

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

.method public xsetInsertRow(Li5/m0;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xc

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

.method public xsetInsertRowShift(Li5/m0;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xd

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

.method public xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v3, 0x6

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

.method public xsetPublished(Li5/m0;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x10

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

.method public xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x9

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetTableBorderDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x15

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetTableType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xa

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetTotalsRowBorderDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x16

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetTotalsRowCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x19

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

.method public xsetTotalsRowCount(Li5/l2;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xe

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

.method public xsetTotalsRowDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x13

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/a0;->h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetTotalsRowShown(Li5/m0;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0xf

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
