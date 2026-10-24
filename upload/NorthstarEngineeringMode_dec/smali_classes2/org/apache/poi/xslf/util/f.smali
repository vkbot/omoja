.class public final synthetic Lorg/apache/poi/xslf/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/poi/xslf/util/PPTHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/util/PPTHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/f;->a:Lorg/apache/poi/xslf/util/PPTHandler;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/f;->a:Lorg/apache/poi/xslf/util/PPTHandler;

    check-cast p1, Ljava/util/regex/Matcher;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/util/PPTHandler;->e(Lorg/apache/poi/xslf/util/PPTHandler;Ljava/util/regex/Matcher;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
