.class public Lorg/apache/poi/sl/draw/geom/ClosePathCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/ClosePathCommandIf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    return p0
.end method

.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/geom/Path2D$Double;->closePath()V

    return-void
.end method

.method public hashCode()I
    .locals 0

    const p0, 0xc105e

    return p0
.end method
