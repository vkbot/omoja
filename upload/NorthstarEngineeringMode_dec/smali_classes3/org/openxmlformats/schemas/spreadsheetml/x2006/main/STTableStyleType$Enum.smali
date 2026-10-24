.class public final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_BLANK_ROW:I = 0x14

.field static final INT_FIRST_COLUMN:I = 0x4

.field static final INT_FIRST_COLUMN_STRIPE:I = 0x8

.field static final INT_FIRST_COLUMN_SUBHEADING:I = 0x15

.field static final INT_FIRST_HEADER_CELL:I = 0xa

.field static final INT_FIRST_ROW_STRIPE:I = 0x6

.field static final INT_FIRST_ROW_SUBHEADING:I = 0x18

.field static final INT_FIRST_SUBTOTAL_COLUMN:I = 0xe

.field static final INT_FIRST_SUBTOTAL_ROW:I = 0x11

.field static final INT_FIRST_TOTAL_CELL:I = 0xc

.field static final INT_HEADER_ROW:I = 0x2

.field static final INT_LAST_COLUMN:I = 0x5

.field static final INT_LAST_HEADER_CELL:I = 0xb

.field static final INT_LAST_TOTAL_CELL:I = 0xd

.field static final INT_PAGE_FIELD_LABELS:I = 0x1b

.field static final INT_PAGE_FIELD_VALUES:I = 0x1c

.field static final INT_SECOND_COLUMN_STRIPE:I = 0x9

.field static final INT_SECOND_COLUMN_SUBHEADING:I = 0x16

.field static final INT_SECOND_ROW_STRIPE:I = 0x7

.field static final INT_SECOND_ROW_SUBHEADING:I = 0x19

.field static final INT_SECOND_SUBTOTAL_COLUMN:I = 0xf

.field static final INT_SECOND_SUBTOTAL_ROW:I = 0x12

.field static final INT_THIRD_COLUMN_SUBHEADING:I = 0x17

.field static final INT_THIRD_ROW_SUBHEADING:I = 0x1a

.field static final INT_THIRD_SUBTOTAL_COLUMN:I = 0x10

.field static final INT_THIRD_SUBTOTAL_ROW:I = 0x13

.field static final INT_TOTAL_ROW:I = 0x3

.field static final INT_WHOLE_TABLE:I = 0x1

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Li5/h0$a;

    new-instance v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v1, v2

    const-string v3, "wholeTable"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v2, v3

    const-string v4, "headerRow"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v3, v4

    const-string v5, "totalRow"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v4, v5

    const-string v6, "firstColumn"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v5, v6

    const-string v7, "lastColumn"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v6, v7

    const-string v8, "firstRowStripe"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v7, v8

    const-string v9, "secondRowStripe"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v8, v9

    const-string v10, "firstColumnStripe"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v9, v10

    const-string v11, "secondColumnStripe"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v10, v11

    const-string v12, "firstHeaderCell"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v11, v12

    const-string v13, "lastHeaderCell"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v12, v13

    const-string v14, "firstTotalCell"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v13, v14

    const-string v15, "lastTotalCell"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v14, v0

    const-string v15, "firstSubtotalColumn"

    move-object/from16 v30, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object v15, v0

    const-string v1, "secondSubtotalColumn"

    move-object/from16 v31, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v16, v0

    const-string v1, "thirdSubtotalColumn"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v17, v0

    const-string v1, "firstSubtotalRow"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v18, v0

    const-string v1, "secondSubtotalRow"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v19, v0

    const-string v1, "thirdSubtotalRow"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v20, v0

    const-string v1, "blankRow"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v21, v0

    const-string v1, "firstColumnSubheading"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v22, v0

    const-string v1, "secondColumnSubheading"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v23, v0

    const-string v1, "thirdColumnSubheading"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v24, v0

    const-string v1, "firstRowSubheading"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v25, v0

    const-string v1, "secondRowSubheading"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v26, v0

    const-string v1, "thirdRowSubheading"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v27, v0

    const-string v1, "pageFieldLabels"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-object/from16 v28, v0

    const-string v1, "pageFieldValues"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    filled-new-array/range {v1 .. v28}, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-direct {v1, v0}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->table:Li5/h0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li5/h0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-result-object p0

    return-object p0
.end method
