.class final enum Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Axis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

.field public static final enum COLUMN:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

.field public static final enum DATA:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

.field public static final enum NO_AXIS:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

.field public static final enum PAGE:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

.field public static final enum ROW:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;


# instance fields
.field final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    const-string v1, "NO_AXIS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->NO_AXIS:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    const-string v2, "ROW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->ROW:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    new-instance v2, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    const-string v3, "COLUMN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->COLUMN:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    new-instance v3, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    const-string v4, "PAGE"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->PAGE:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    new-instance v4, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    const-string v5, "DATA"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->DATA:Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->$VALUES:[Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->$VALUES:[Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    invoke-virtual {v0}, [Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;

    return-object v0
.end method
