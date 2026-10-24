.class public Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "SourceFile"


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

.field _rows:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {p1}, La3/n;->getRowArray()[La3/m;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, La3/m;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, La3/m;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->load(La3/m;)Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Index element \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, La3/m;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\' already exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static combineGeometries(Ljava/util/SortedMap;Ljava/util/SortedMap;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "TT;>;>(TS;TS;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCombinedRows()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    :goto_0
    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->combineGeometries(Ljava/util/SortedMap;Ljava/util/SortedMap;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getNoShow()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    const-string v1, "NoShow"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D$Double;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getCombinedRows()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v2, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    if-nez v2, :cond_b

    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_3

    move-object v4, v1

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2, p1}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    :cond_4
    return-object v2

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    :goto_2
    instance-of v5, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    new-instance v3, Lorg/apache/poi/xdgf/geom/SplineCollector;

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-direct {v3, v0}, Lorg/apache/poi/xdgf/geom/SplineCollector;-><init>(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;)V

    :goto_3
    move-object v0, v4

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "SplineStart found multiple times!"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    instance-of v5, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    if-eqz v5, :cond_9

    if-eqz v3, :cond_8

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    invoke-virtual {v3, v0}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addKnot(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;)V

    goto :goto_3

    :cond_8
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "SplineKnot found without SplineStart!"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3, v2, p1}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    move-object v3, v1

    :cond_a
    invoke-interface {v0, v2, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    goto :goto_3

    :cond_b
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "SplineStart must be preceded by another type"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 3

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    invoke-interface {v0, v1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
