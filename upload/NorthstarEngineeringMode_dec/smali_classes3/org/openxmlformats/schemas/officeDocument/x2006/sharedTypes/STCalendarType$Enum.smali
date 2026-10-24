.class public final Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_GREGORIAN:I = 0x1

.field static final INT_GREGORIAN_ARABIC:I = 0x4

.field static final INT_GREGORIAN_ME_FRENCH:I = 0x3

.field static final INT_GREGORIAN_US:I = 0x2

.field static final INT_GREGORIAN_XLIT_ENGLISH:I = 0xc

.field static final INT_GREGORIAN_XLIT_FRENCH:I = 0xd

.field static final INT_HEBREW:I = 0x6

.field static final INT_HIJRI:I = 0x5

.field static final INT_JAPAN:I = 0x8

.field static final INT_KOREA:I = 0xa

.field static final INT_NONE:I = 0xe

.field static final INT_SAKA:I = 0xb

.field static final INT_TAIWAN:I = 0x7

.field static final INT_THAI:I = 0x9

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Li5/h0$a;

    new-instance v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v2, "gregorian"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v3, "gregorianUs"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v4, "gregorianMeFrench"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v5, "gregorianArabic"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v6, "hijri"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v7, "hebrew"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v8, "taiwan"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v9, "japan"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v10, "thai"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v11, "korea"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v12, "saka"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v13, "gregorianXlitEnglish"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v14, "gregorianXlitFrench"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v15, "none"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v14, v15, v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v1 .. v14}, [Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->table:Li5/h0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li5/h0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forInt(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object p0

    return-object p0
.end method
