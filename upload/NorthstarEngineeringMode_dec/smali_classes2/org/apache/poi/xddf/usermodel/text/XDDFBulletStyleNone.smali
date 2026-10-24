.class public Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;


# instance fields
.field private style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    return-object p0
.end method
