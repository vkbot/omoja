.class public final Lorg/apache/poi/sl/draw/geom/Path;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathIf;


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/PathCommand;",
            ">;"
        }
    .end annotation
.end field

.field private extrusionOk:Z

.field private fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field private h:J

.field private stroke:Z

.field private w:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->stroke:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->extrusionOk:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->w:J

    iput-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->h:J

    return-void
.end method


# virtual methods
.method public addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/sl/draw/geom/Path;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/Path;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->w:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lorg/apache/poi/sl/draw/geom/Path;->w:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lorg/apache/poi/sl/draw/geom/Path;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/Path;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/Path;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lorg/apache/poi/sl/draw/geom/Path;->stroke:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lorg/apache/poi/sl/draw/geom/Path;->stroke:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->extrusionOk:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-boolean p1, p1, Lorg/apache/poi/sl/draw/geom/Path;->extrusionOk:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0
.end method

.method public getH()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->h:J

    return-wide v0
.end method

.method public getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;
    .locals 2

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/geom/PathCommand;

    invoke-interface {v1, v0, p1}, Lorg/apache/poi/sl/draw/geom/PathCommand;->execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getW()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->w:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    iget-wide v1, p0, Lorg/apache/poi/sl/draw/geom/Path;->w:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/poi/sl/draw/geom/Path;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/poi/sl/draw/geom/Path;->stroke:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->extrusionOk:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isExtrusionOk()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->extrusionOk:Z

    return p0
.end method

.method public isFilled()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStroked()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/sl/draw/geom/Path;->stroke:Z

    return p0
.end method

.method public setExtrusionOk(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/draw/geom/Path;->extrusionOk:Z

    return-void
.end method

.method public setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Path;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-void
.end method

.method public setH(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/geom/Path;->h:J

    return-void
.end method

.method public setStroke(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/draw/geom/Path;->stroke:Z

    return-void
.end method

.method public setW(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/geom/Path;->w:J

    return-void
.end method
