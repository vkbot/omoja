.class public final synthetic Lm5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lm5/y;

.field public final synthetic b:Lm5/y;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lm5/y;Lm5/y;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/u;->a:Lm5/y;

    iput-object p2, p0, Lm5/u;->b:Lm5/y;

    iput p3, p0, Lm5/u;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lm5/u;->d:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm5/u;->a:Lm5/y;

    iget-object v1, p0, Lm5/u;->b:Lm5/y;

    iget v2, p0, Lm5/u;->c:I

    iget p0, p0, Lm5/u;->d:I

    invoke-virtual {v0, v1, v2, p0}, Lm5/y;->h2(Lm5/y;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
