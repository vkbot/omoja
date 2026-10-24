.class Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;
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
    name = "BooleanValue"
.end annotation


# instance fields
.field _value:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->_value:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->_value:Z

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public getValue()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->_value:Z

    return p0
.end method

.method public setValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->_value:Z

    return-void
.end method
