.class public final enum Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum BOTH:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum CENTER:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum END:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum HIGH_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum LOW_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum MEDIUM_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum NUM_TAB:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum RIGHT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum START:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum THAI_DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field private static final imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v1, "START"

    const/4 v12, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v12, v2}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->START:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v3, "CENTER"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->CENTER:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v3, "END"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->END:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v4, "BOTH"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->BOTH:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v5, "MEDIUM_KASHIDA"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->MEDIUM_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v6, "DISTRIBUTE"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v6, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v7, "NUM_TAB"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->NUM_TAB:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v8, "HIGH_KASHIDA"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->HIGH_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v8, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v9, "LOW_KASHIDA"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LOW_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v10, "THAI_DISTRIBUTE"

    const/16 v13, 0xa

    invoke-direct {v9, v10, v11, v13}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->THAI_DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v10, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v11, "LEFT"

    const/16 v14, 0xb

    invoke-direct {v10, v11, v13, v14}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v11, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v13, "RIGHT"

    const/16 v15, 0xc

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->RIGHT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    filled-new-array/range {v0 .. v11}, [Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->imap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->values()[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v12, v1, :cond_0

    aget-object v2, v0, v12

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->imap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 2

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->imap:Ljava/util/Map;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown paragraph alignment: "

    .line 4
    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->value:I

    return p0
.end method
