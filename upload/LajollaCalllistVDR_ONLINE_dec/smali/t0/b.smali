.class public final Lt0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/a;


# static fields
.field public static final c:[Ljava/lang/String;


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lt0/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 1

    iget-object v0, p0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final N(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/d0;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lt0/b;->O(Ls0/f;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final O(Ls0/f;)Landroid/database/Cursor;
    .locals 4

    new-instance v0, Lt0/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lt0/a;-><init>(Ls0/f;I)V

    invoke-interface {p1}, Ls0/f;->z()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lt0/b;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final P()V
    .locals 1

    iget-object v0, p0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method
