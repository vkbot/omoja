.class public final Landroidx/cursoradapter/widget/b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/cursoradapter/widget/b;->a:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/cursoradapter/widget/b;->a:Landroidx/cursoradapter/widget/CursorAdapter;

    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/cursoradapter/widget/b;->a:Landroidx/cursoradapter/widget/CursorAdapter;

    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
