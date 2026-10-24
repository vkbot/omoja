.class public final synthetic Lorg/apache/poi/xslf/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic c:Lorg/apache/poi/xslf/util/PPTHandler;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/util/PPTHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/d;->c:Lorg/apache/poi/xslf/util/PPTHandler;

    iput p2, p0, Lorg/apache/poi/xslf/util/d;->r:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/util/d;->c:Lorg/apache/poi/xslf/util/PPTHandler;

    iget p0, p0, Lorg/apache/poi/xslf/util/d;->r:I

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/util/PPTHandler;->b(Lorg/apache/poi/xslf/util/PPTHandler;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
