.class public final synthetic Lorg/apache/poi/xslf/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/util/PPTX2PNG$ProxyConsumer;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/j;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final parse(Lorg/apache/poi/xslf/util/MFProxy;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/j;->a:Ljava/io/InputStream;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->a(Ljava/io/InputStream;Lorg/apache/poi/xslf/util/MFProxy;)V

    return-void
.end method
