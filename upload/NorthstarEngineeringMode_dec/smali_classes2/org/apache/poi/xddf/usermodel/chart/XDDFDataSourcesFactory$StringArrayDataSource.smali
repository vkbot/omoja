.class Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$StringArrayDataSource;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringArrayDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;-><init>([Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getFormatCode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
