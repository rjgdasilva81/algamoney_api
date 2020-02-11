package com.algaworks.algamoney.api.service;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.algaworks.algamoney.api.model.Lancamento;
import com.algaworks.algamoney.api.model.Pessoa;
import com.algaworks.algamoney.api.repository.LancamentoRepository;
import com.algaworks.algamoney.api.repository.PessoaRepository;
import com.algaworks.algamoney.api.service.exception.PessoaInexistenteouInativaException;

@Service
public class LancamentoService {
	
	@Autowired
	private PessoaRepository pessoaRepository;
	
	@Autowired 
	private LancamentoRepository lancamentoRepository;
	
	public Lancamento salvar(@Valid Lancamento lancamento) {
		
		Optional<Pessoa> pessoaOptional = pessoaRepository.findById(lancamento.getPessoa().getCodigo());
		
		if (!pessoaOptional.isPresent() || pessoaOptional.get().isInativo()) {
			throw new PessoaInexistenteouInativaException();
		}
		
		return lancamentoRepository.save(lancamento);
	}

}
