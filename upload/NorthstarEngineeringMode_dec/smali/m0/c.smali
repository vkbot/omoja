.class public final Lm0/c;
.super Lm0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm0/b;->a:Lm0/b$a;

    iput-object v0, p0, Lm0/b;->b:Lm0/b$a;

    const/4 v0, 0x0

    iput v0, p0, Lm0/b;->c:I

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lm0/b;->a:Lm0/b$a;

    new-instance v1, Lm0/b$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lm0/b$a;->a:Lm0/b$a;

    iput-object v2, v1, Lm0/b$a;->b:Lm0/b$a;

    iput-object p1, v1, Lm0/b$a;->c:Ljava/lang/Object;

    iget p1, p0, Lm0/b;->c:I

    if-nez p1, :cond_0

    iput-object v1, p0, Lm0/b;->a:Lm0/b$a;

    iput-object v1, p0, Lm0/b;->b:Lm0/b$a;

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lm0/b$a;->a:Lm0/b$a;

    iput-object v1, v0, Lm0/b$a;->b:Lm0/b$a;

    iput-object v1, p0, Lm0/b;->a:Lm0/b$a;

    :goto_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm0/b;->c:I

    return-void
.end method
