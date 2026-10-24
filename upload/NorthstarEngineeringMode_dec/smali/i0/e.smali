.class public Li0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static final g:Ljava/lang/Object;


# instance fields
.field public a:[[D

.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:D

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li0/e;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li0/e;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Li0/e;->a:[[D

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Li0/e;->b:[Ljava/lang/Object;

    iput v1, p0, Li0/e;->c:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Li0/e;->d:D

    iput v0, p0, Li0/e;->e:I

    return-void
.end method


# virtual methods
.method public final a([DLjava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_6

    array-length v0, p1

    iget v1, p0, Li0/e;->e:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Li0/e;->c:I

    if-nez v0, :cond_0

    sget-object p2, Li0/e;->f:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Li0/e;->a:[[D

    array-length v2, v1

    if-ge v2, v0, :cond_4

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-array v1, v0, [[D

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget v4, p0, Li0/e;->c:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Li0/e;->a:[[D

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    :goto_2
    iget v3, p0, Li0/e;->c:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Li0/e;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iput-object v1, p0, Li0/e;->a:[[D

    iput-object v0, p0, Li0/e;->b:[Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Li0/e;->a:[[D

    iget v1, p0, Li0/e;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Li0/e;->b:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li0/e;->c:I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "p.length >= dimension required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
