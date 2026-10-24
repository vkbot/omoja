.class public Lorg/apache/poi/sl/draw/geom/Outline;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final path:Lorg/apache/poi/sl/draw/geom/PathIf;

.field private final shape:Ljava/awt/Shape;


# direct methods
.method public constructor <init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Outline;->shape:Ljava/awt/Shape;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/Outline;->path:Lorg/apache/poi/sl/draw/geom/PathIf;

    return-void
.end method


# virtual methods
.method public getOutline()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/Outline;->shape:Ljava/awt/Shape;

    return-object p0
.end method

.method public getPath()Lorg/apache/poi/sl/draw/geom/PathIf;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/Outline;->path:Lorg/apache/poi/sl/draw/geom/PathIf;

    return-object p0
.end method
