.class public final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_AVG:I = 0x5

.field static final INT_BLANK:I = 0xf

.field static final INT_COUNT:I = 0x9

.field static final INT_COUNT_A:I = 0x4

.field static final INT_DATA:I = 0x1

.field static final INT_DEFAULT:I = 0x2

.field static final INT_GRAND:I = 0xe

.field static final INT_MAX:I = 0x6

.field static final INT_MIN:I = 0x7

.field static final INT_PRODUCT:I = 0x8

.field static final INT_STD_DEV:I = 0xa

.field static final INT_STD_DEV_P:I = 0xb

.field static final INT_SUM:I = 0x3

.field static final INT_VAR:I = 0xc

.field static final INT_VAR_P:I = 0xd

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Li5/h0$a;

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v2, "data"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v3, "default"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v4, "sum"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v5, "countA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v6, "avg"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v7, "max"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v8, "min"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v9, "product"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v10, "count"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v11, "stdDev"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v12, "stdDevP"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v13, "var"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v14, "varP"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v15, "grand"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v14, v15, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    const-string v0, "blank"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v0, v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v14, v17

    filled-new-array/range {v1 .. v15}, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->table:Li5/h0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li5/h0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    move-result-object p0

    return-object p0
.end method
