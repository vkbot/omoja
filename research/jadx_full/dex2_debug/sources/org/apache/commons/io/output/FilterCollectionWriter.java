package org.apache.commons.io.output;

import i7.k;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Stream;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.input.i;
import org.apache.commons.io.input.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FilterCollectionWriter extends Writer {
    protected final Collection<Writer> EMPTY_WRITERS;
    protected final Collection<Writer> writers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FilterCollectionWriter(Writer... writerArr) {
        List list = Collections.EMPTY_LIST;
        this.EMPTY_WRITERS = list;
        this.writers = writerArr != null ? Arrays.asList(writerArr) : list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void S(int i, Writer writer) throws IOException {
        lambda$write$5(i, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void V(String str, int i, int i2, Writer writer) throws IOException {
        lambda$write$7(str, i, i2, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(String str, Writer writer) throws IOException {
        lambda$write$6(str, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(char[] cArr, Writer writer) throws IOException {
        lambda$write$3(cArr, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c0(CharSequence charSequence, Writer writer) throws IOException {
        lambda$append$1(charSequence, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d0(char[] cArr, int i, int i2, Writer writer) throws IOException {
        lambda$write$4(cArr, i, i2, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e0(char c, Writer writer) throws IOException {
        lambda$append$0(c, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FilterCollectionWriter forAllWriters(IOConsumer<Writer> iOConsumer) {
        IOConsumer.forAll(iOConsumer, writers());
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$append$0(char c, Writer writer) throws IOException {
        writer.append(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$append$1(CharSequence charSequence, Writer writer) throws IOException {
        writer.append(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$append$2(CharSequence charSequence, int i, int i2, Writer writer) throws IOException {
        writer.append(charSequence, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$write$3(char[] cArr, Writer writer) throws IOException {
        writer.write(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$write$4(char[] cArr, int i, int i2, Writer writer) throws IOException {
        writer.write(cArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$write$5(int i, Writer writer) throws IOException {
        writer.write(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$write$6(String str, Writer writer) throws IOException {
        writer.write(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$write$7(String str, int i, int i2, Writer writer) throws IOException {
        writer.write(str, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Stream<Writer> writers() {
        return this.writers.stream().filter(new k(5));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void y(CharSequence charSequence, int i, int i2, Writer writer) throws IOException {
        lambda$append$2(charSequence, i, i2, writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        return forAllWriters(new j(4, charSequence));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        forAllWriters(new org.apache.commons.io.input.h(2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        forAllWriters(new org.apache.commons.io.input.h(3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer
    public void write(char[] cArr) {
        forAllWriters(new j(5, cArr));
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        forAllWriters(new i(cArr, i, i2, 2));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        return append(charSequence);
    }

    @Override // java.io.Writer
    public void write(int i) {
        forAllWriters(new org.apache.commons.io.input.g(i, 1));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i2) {
        return append(charSequence, i, i2);
    }

    @Override // java.io.Writer
    public void write(String str) {
        forAllWriters(new j(3, str));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) {
        return forAllWriters(new b(c));
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) {
        forAllWriters(new i(str, i, i2, 3));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(char c) {
        return append(c);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) {
        return forAllWriters(new i(charSequence, i, i2, 1));
    }

    public FilterCollectionWriter(Collection<Writer> collection) {
        List list = Collections.EMPTY_LIST;
        this.EMPTY_WRITERS = list;
        this.writers = collection == null ? list : collection;
    }
}
