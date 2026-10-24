.class Lorg/apache/poi/hssf/extractor/OldExcelExtractor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POITextExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hssf/extractor/OldExcelExtractor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/extractor/OldExcelExtractor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor$1;->this$0:Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDocument()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor$1;->this$0:Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    invoke-static {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->access$100(Lorg/apache/poi/hssf/extractor/OldExcelExtractor;)Lorg/apache/poi/hssf/record/RecordInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Ljava/io/Closeable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor$1;->this$0:Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    invoke-static {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->access$000(Lorg/apache/poi/hssf/extractor/OldExcelExtractor;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor$1;->this$0:Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    invoke-static {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->access$000(Lorg/apache/poi/hssf/extractor/OldExcelExtractor;)Ljava/io/Closeable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    return-void
.end method
