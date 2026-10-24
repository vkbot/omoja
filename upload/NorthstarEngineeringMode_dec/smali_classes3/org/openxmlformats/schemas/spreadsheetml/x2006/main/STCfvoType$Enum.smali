.class public final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_FORMULA:I = 0x5

.field static final INT_MAX:I = 0x3

.field static final INT_MIN:I = 0x4

.field static final INT_NUM:I = 0x1

.field static final INT_PERCENT:I = 0x2

.field static final INT_PERCENTILE:I = 0x6

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Li5/h0$a;

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v2, "num"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v3, "percent"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v4, "max"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v5, "min"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v6, "formula"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v7, "percentile"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v1 .. v6}, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->table:Li5/h0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li5/h0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object p0

    return-object p0
.end method
