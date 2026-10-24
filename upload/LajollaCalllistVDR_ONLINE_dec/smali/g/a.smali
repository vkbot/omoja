.class public final Lg/a;
.super Lg/g;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/g;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/a;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lg/c;
    .locals 1

    iget-object v0, p0, Lg/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/c;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lg/a;->a(Ljava/lang/Object;)Lg/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lg/c;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/a;->f:Ljava/util/HashMap;

    new-instance v1, Lg/c;

    invoke-direct {v1, p1, p2}, Lg/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p2, p0, Lg/g;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lg/g;->e:I

    iget-object p2, p0, Lg/g;->c:Lg/c;

    if-nez p2, :cond_1

    iput-object v1, p0, Lg/g;->b:Lg/c;

    iput-object v1, p0, Lg/g;->c:Lg/c;

    goto :goto_0

    :cond_1
    iput-object v1, p2, Lg/c;->d:Lg/c;

    iput-object p2, v1, Lg/c;->e:Lg/c;

    iput-object v1, p0, Lg/g;->c:Lg/c;

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Lg/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg/a;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
