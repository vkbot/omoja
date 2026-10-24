.class public final Ly3/c;
.super Ly3/f;
.source "SourceFile"


# static fields
.field public static final y:Ly3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly3/c;

    invoke-direct {v0}, Ly3/c;-><init>()V

    sput-object v0, Ly3/c;->y:Ly3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget v1, Ly3/k;->c:I

    sget v2, Ly3/k;->d:I

    sget-wide v3, Ly3/k;->e:J

    sget-object v5, Ly3/k;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ly3/f;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
