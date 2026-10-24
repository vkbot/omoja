.class Lorg/apache/poi/xslf/util/WMFHandler;
.super Lorg/apache/poi/xslf/util/EMFHandler;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/util/EMFHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    return-object p0
.end method
