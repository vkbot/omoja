.class public final Landroidx/work/OneTimeWorkRequestKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final OneTimeWorkRequestBuilder()Landroidx/work/OneTimeWorkRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Landroidx/work/ListenableWorker;",
            ">()",
            "Landroidx/work/OneTimeWorkRequest$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setInputMerger(Landroidx/work/OneTimeWorkRequest$Builder;Ls3/b;)Landroidx/work/OneTimeWorkRequest$Builder;
    .locals 1
    .param p1    # Ls3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/OneTimeWorkRequest$Builder;",
            "Ls3/b<",
            "+",
            "Landroidx/work/InputMerger;",
            ">;)",
            "Landroidx/work/OneTimeWorkRequest$Builder;"
        }
    .end annotation

    const-string v0, "$this$setInputMerger"

    invoke-static {p0, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMerger"

    invoke-static {p1, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo3/c;

    invoke-interface {p1}, Lo3/c;->a()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {p1, v0}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputMerger(Ljava/lang/Class;)Landroidx/work/OneTimeWorkRequest$Builder;

    move-result-object p0

    const-string/jumbo p1, "setInputMerger(inputMerger.java)"

    invoke-static {p0, p1}, Lo3/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
