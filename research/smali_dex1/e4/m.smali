.class public final Le4/m;
.super Ls3/k;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:Le4/p;


# direct methods
.method public constructor <init>(Le4/p;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le4/m;->b:Le4/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Le4/m;->b:Le4/p;

    .line 2
    .line 3
    invoke-virtual {p1}, Le4/p;->b()Le4/q;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Le4/q;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Le4/m;->b:Le4/p;

    .line 2
    .line 3
    invoke-virtual {p1}, Le4/p;->b()Le4/q;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Le4/q;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
