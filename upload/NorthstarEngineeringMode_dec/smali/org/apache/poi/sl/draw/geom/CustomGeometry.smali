.class public final Lorg/apache/poi/sl/draw/geom/CustomGeometry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/sl/draw/geom/PathIf;",
        ">;"
    }
.end annotation


# instance fields
.field final adjusts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/AdjustValueIf;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/ConnectionSiteIf;",
            ">;"
        }
    .end annotation
.end field

.field final guides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/GuideIf;",
            ">;"
        }
    .end annotation
.end field

.field final handles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/AdjustHandle;",
            ">;"
        }
    .end annotation
.end field

.field final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/PathIf;",
            ">;"
        }
    .end annotation
.end field

.field textBounds:Lorg/apache/poi/sl/draw/geom/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->handles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->connections:Ljava/util/List;

    return-void
.end method

.method private static lineTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/LineToCommand;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setX(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setY(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;->setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    return-object p0
.end method

.method private static moveTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/MoveToCommand;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setX(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setY(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    return-object p0
.end method


# virtual methods
.method public addAdjustGuide(Lorg/apache/poi/sl/draw/geom/AdjustValueIf;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAdjustHandle(Lorg/apache/poi/sl/draw/geom/AdjustHandle;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->handles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConnectionSite(Lorg/apache/poi/sl/draw/geom/ConnectionSiteIf;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->connections:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGeomGuide(Lorg/apache/poi/sl/draw/geom/GuideIf;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPath(Lorg/apache/poi/sl/draw/geom/PathIf;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->handles:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->handles:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->connections:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->connections:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getTextBounds()Lorg/apache/poi/sl/draw/geom/Path;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->handles:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->connections:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/sl/draw/geom/PathIf;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setTextBounds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p1, p2}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->moveTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p3, p2}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->lineTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/LineToCommand;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object p2, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p3, p4}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->lineTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/LineToCommand;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object p2, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p1, p4}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->lineTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/LineToCommand;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance p1, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {p1}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/sl/draw/geom/PathIf;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
