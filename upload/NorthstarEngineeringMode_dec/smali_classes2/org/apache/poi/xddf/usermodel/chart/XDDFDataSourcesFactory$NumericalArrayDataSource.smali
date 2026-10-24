.class Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$NumericalArrayDataSource;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericalArrayDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource<",
        "TT;>;",
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private formatCode:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Number;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;-><init>([Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getFormatCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$NumericalArrayDataSource;->formatCode:Ljava/lang/String;

    return-object p0
.end method

.method public setFormatCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$NumericalArrayDataSource;->formatCode:Ljava/lang/String;

    return-void
.end method
