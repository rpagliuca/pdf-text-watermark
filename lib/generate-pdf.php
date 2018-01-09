<?php
require('fpdf/fpdf181/fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(0, -10, $argv[1]);
$pdf->Output();
