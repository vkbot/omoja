.class final enum Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaShifter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShiftMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field public static final enum ColumnCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field public static final enum ColumnMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field public static final enum RowCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field public static final enum RowMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field public static final enum SheetMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    const-string v1, "RowMove"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    new-instance v1, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    const-string v2, "RowCopy"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    new-instance v2, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    const-string v3, "ColumnMove"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->ColumnMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    new-instance v3, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    const-string v4, "ColumnCopy"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->ColumnCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    new-instance v4, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    const-string v5, "SheetMove"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->SheetMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-object v0
.end method
