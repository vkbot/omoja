.class Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$LiteralStringArrayDataSource;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$StringArrayDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteralStringArrayDataSource"
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$StringArrayDataSource;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isLiteral()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
