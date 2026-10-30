.class public final Li9/x0;
.super Lh9/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Li9/x0;

.field public static final b:Lj9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li9/x0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li9/x0;->a:Li9/x0;

    .line 7
    .line 8
    sget-object v0, Lj9/c;->a:Lj9/a;

    .line 9
    .line 10
    sput-object v0, Li9/x0;->b:Lj9/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final encodeBoolean(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeByte(B)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeChar(C)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeDouble(D)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeEnum(Lg9/e;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final encodeFloat(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeInt(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeLong(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeNull()V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeShort(S)V
    .locals 0

    .line 1
    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final encodeValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getSerializersModule()Lj9/b;
    .locals 1

    .line 1
    sget-object v0, Li9/x0;->b:Lj9/a;

    .line 2
    .line 3
    return-object v0
.end method
