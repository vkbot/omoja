.class public final Lt0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls0/f;


# direct methods
.method public synthetic constructor <init>(Ls0/f;I)V
    .locals 0

    iput p2, p0, Lt0/a;->a:I

    iput-object p1, p0, Lt0/a;->b:Ls0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    iget p1, p0, Lt0/a;->a:I

    iget-object v0, p0, Lt0/a;->b:Ls0/f;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lt0/f;

    invoke-direct {p1, p4}, Lt0/f;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {v0, p1}, Ls0/f;->J(Lt0/f;)V

    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1

    :goto_0
    new-instance p1, Lt0/f;

    invoke-direct {p1, p4}, Lt0/f;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {v0, p1}, Ls0/f;->J(Lt0/f;)V

    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
