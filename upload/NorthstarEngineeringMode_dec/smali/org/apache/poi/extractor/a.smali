.class public final synthetic Lorg/apache/poi/extractor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/apache/poi/extractor/a;->a:I

    iput-object p1, p0, Lorg/apache/poi/extractor/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/extractor/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 2

    iget v0, p0, Lorg/apache/poi/extractor/a;->a:I

    iget-object v1, p0, Lorg/apache/poi/extractor/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/extractor/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-static {p0, v1, p1}, Lorg/apache/poi/extractor/ExtractorFactory;->i(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/io/File;

    invoke-static {p0, v1, p1}, Lorg/apache/poi/extractor/ExtractorFactory;->h(Ljava/io/File;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
