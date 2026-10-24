.class Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorValue"
.end annotation


# instance fields
.field _value:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->_NO_ERROR:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->_value:B

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->_value:B

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public getValue()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->_value:B

    return p0
.end method

.method public setValue(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->_value:B

    return-void
.end method
