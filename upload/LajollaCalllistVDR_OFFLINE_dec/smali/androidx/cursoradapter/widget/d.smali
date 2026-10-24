.class public final Landroidx/cursoradapter/widget/d;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/cursoradapter/widget/c;


# direct methods
.method public constructor <init>(Landroidx/cursoradapter/widget/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Landroidx/cursoradapter/widget/d;->a:Landroidx/cursoradapter/widget/c;

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/cursoradapter/widget/d;->a:Landroidx/cursoradapter/widget/c;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroidx/cursoradapter/widget/c;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    iget-object p0, p0, Landroidx/cursoradapter/widget/d;->a:Landroidx/cursoradapter/widget/c;

    invoke-interface {p0, p1}, Landroidx/cursoradapter/widget/c;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p0, 0x0

    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    iget-object p0, p0, Landroidx/cursoradapter/widget/d;->a:Landroidx/cursoradapter/widget/c;

    invoke-interface {p0}, Landroidx/cursoradapter/widget/c;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p0, p2}, Landroidx/cursoradapter/widget/c;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
