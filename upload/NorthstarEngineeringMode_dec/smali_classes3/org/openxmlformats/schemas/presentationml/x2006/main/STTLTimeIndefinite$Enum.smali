.class public final Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_INDEFINITE:I = 0x1

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li5/h0$a;

    new-instance v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;

    const-string v2, "indefinite"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v1}, [Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;->table:Li5/h0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li5/h0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;->forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;

    move-result-object p0

    return-object p0
.end method
