.class final Lorg/apache/poi/xslf/draw/SVGUserAgent$1;
.super Lorg/apache/batik/parser/DefaultLengthHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/draw/SVGUserAgent;->parseLength(Lorg/w3c/dom/svg/SVGSVGElement;Ljava/lang/String;)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$val:[F


# direct methods
.method public constructor <init>([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent$1;->val$val:[F

    invoke-direct {p0}, Lorg/apache/batik/parser/DefaultLengthHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public lengthValue(F)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent$1;->val$val:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    return-void
.end method
