CC = gcc

CFLAGS = -I utilities

APPS = 2mm 3mm atax mvt gemm gemver gesummv symm trmm

BIN_DIR = bin
TRC_DIR = trc

$(shell mkdir -p $(BIN_DIR) $(TRC_DIR))

all: $(APPS)

2mm: linear-algebra/kernels/2mm/2mm.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

3mm: linear-algebra/kernels/3mm/3mm.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

atax: linear-algebra/kernels/atax/atax.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

mvt: linear-algebra/kernels/mvt/mvt.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

gemm: linear-algebra/blas/gemm/gemm.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

gemver: linear-algebra/blas/gemver/gemver.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

gesummv: linear-algebra/blas/gesummv/gesummv.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

symm: linear-algebra/blas/symm/symm.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

trmm: linear-algebra/blas/trmm/trmm.c
	$(CC) $(CFLAGS) utilities/polybench.c $< -o $(BIN_DIR)/$@
	$(BIN_DIR)/$@ > $(TRC_DIR)/$@.out
	wc -l $(TRC_DIR)/$@.out

clean:
	rm -rf $(BIN_DIR) $(TRC_DIR)
