.class public final synthetic Lorg/apache/poi/xslf/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/util/PPTX2PNG$ProxyConsumer;


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/k;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final parse(Lorg/apache/poi/xslf/util/MFProxy;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/k;->a:Ljava/io/File;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->d(Ljava/io/File;Lorg/apache/poi/xslf/util/MFProxy;)V

    return-void
.end method
